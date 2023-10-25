<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id'])) {

	$items_result_set = mysqli_query ($conn, "SELECT DISTINCT i.fd_item_id, it.fd_name FROM tb_inwards as i, tb_items as it WHERE i.fd_item_id = it.fd_item_id;");
	$response = array ();
	while ($items_result_row = mysqli_fetch_array ($items_result_set)) {
		$inward_quantity = mysqli_fetch_row (mysqli_query ($conn, "SELECT sum(fd_quantity) FROM tb_inwards WHERE fd_item_id = ".$items_result_row['fd_item_id'].";"));
		$outward_quantity = mysqli_fetch_row (mysqli_query ($conn, "SELECT sum(fd_quantity) FROM tb_outwards WHERE fd_item_id = ".$items_result_row['fd_item_id'].";"));
		$outward_quantity[0] = ($outward_quantity[0]==NULL)?0:$outward_quantity[0];
		$quantity = $inward_quantity[0] - $outward_quantity[0];
		
		/*$types = array ();
		while ($item_type_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_type FROM tb_item_types WHERE fd_item_type_id = ".$items_result_row['fd_item_type_id'].";"))) {
			$inward_type_quantity = mysqli_fetch_row (mysqli_query ($conn, "SELECT sum(fd_quantity) FROM tb_inwards WHERE fd_item_id = ".$items_result_row['fd_item_id'].";"));
			$outward_type_quantity = mysqli_fetch_row (mysqli_query ($conn, "SELECT sum(fd_quantity) FROM tb_outwards WHERE fd_item_id = ".$items_result_row['fd_item_id'].";"));
			$outward_type_quantity[0] = ($outward_type_quantity[0]==NULL)?0:$outward_type_quantity[0];
			$type_quantity = $outward_type_quantity[0] - $outward_type_quantity[0];
		}
		
		$lc_item_type = $item_type_result_row[0];
		$item_manufacturer_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_manufacturer FROM tb_item_manufacturers WHERE fd_item_manufacturer_id = ".$lc_item_manufacturer_id.";"));
		$lc_item_manufacturer = $item_manufacturer_result_row[0];*/
		
		/*$serial_numbers_result_set = mysqli_query ($conn, "SELECT isn.fd_serial_number FROM tb_inwards as i, tb_inward_serial_numbers as isn WHERE i.fd_inward_id = isn.fd_inward_id AND i.fd_item_id = ".$items_result_row['fd_item_id']." AND isn.fd_inward_serial_number_id NOT IN (SELECT fd_inward_serial_number_id FROM tb_outward_serial_numbers);");
		$serial_numbers = array ();
		while ($serial_numbers_result_row = mysqli_fetch_array ($serial_numbers_result_set)) {
			$serial_numbers[] = $serial_numbers_result_row['fd_serial_number'];
		}*/
		
		$response[] = array ('item_id' => $items_result_row['fd_item_id'], 'name' => $items_result_row['fd_name'], 'quantity' => $quantity, 'inward' => $inward_quantity[0], 'outward' => $outward_quantity[0]);	
	}
	echo (json_encode (array ('items' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>