<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id'])) {
	if (isset ($_POST['outward_id'])) {
		$query = "SELECT * FROM tb_outwards WHERE fd_outward_id = ".$_POST['outward_id'].";";
	} else {
		$query = "SELECT * FROM tb_outwards";
		if (isset ($_POST['limit']))
			$query .= " ORDER BY fd_outward_id DESC LIMIT ".$_POST['limit'].";";
		else if (isset ($_POST['mode']))
			$query .= " WHERE fd_is_dispatched = 0;";
		else
			$query .= ";";
	}
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$serial_numbers_query = "SELECT osn.fd_inward_serial_number_id, isn.fd_serial_number FROM tb_outward_serial_numbers as osn, tb_inward_serial_numbers as isn WHERE osn.fd_outward_id = ".$result_row['fd_outward_id']." AND osn.fd_inward_serial_number_id = isn.fd_inward_serial_number_id;";
		$serial_numbers_result_set = mysqli_query ($conn, $serial_numbers_query);
		$serial_numbers = array ();
		while ($serial_numbers_result_row = mysqli_fetch_array ($serial_numbers_result_set)) {
			$serial_numbers[] = array ('inward_serial_number_id' => $serial_numbers_result_row['fd_inward_serial_number_id'], 'serial_number' => $serial_numbers_result_row['fd_serial_number']);
		}
		$item_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_name FROM tb_items WHERE fd_item_id = ".$result_row['fd_item_id'].";"));
		$lc_item_name = $item_result_row[0];
		$item_type_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_type FROM tb_item_types WHERE fd_item_type_id = ".$result_row['fd_item_type_id'].";"));
		$lc_item_type = $item_type_result_row[0];
		$item_manufacturer_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_manufacturer FROM tb_item_manufacturers WHERE fd_item_manufacturer_id = ".$result_row['fd_item_manufacturer_id'].";"));
		$lc_item_manufacturer = $item_manufacturer_result_row[0];
		$station_result_array = mysqli_fetch_array (mysqli_query ($conn, "SELECT fd_station_id, fd_name FROM tb_stations WHERE fd_station_id = ".$result_row['fd_station_id'].";"));
		
		$response[] = array ('outward_id' => $result_row['fd_outward_id'], 'date' => date ('m/d/Y', strtotime ($result_row['fd_date'])), 'station_id' => $result_row['fd_station_id'], 'station' => $station_result_array['fd_name'], 'item' => $lc_item_name, 'item_id' => $result_row['fd_item_id'], 'item_type' => $lc_item_type, 'item_type_id' => $result_row['fd_item_type_id'], 'item_manufacturer' => $lc_item_manufacturer, 'item_manufacturer_id' => $result_row['fd_item_manufacturer_id'], 'quantity' => $result_row['fd_quantity'], 'serial_numbers' => $serial_numbers, 'serial_numbers_count' => count ($serial_numbers), 'mode_of_dispatch' => $result_row['fd_mode_of_dispatch'], 'remarks' =>  $result_row['fd_remarks'], 'action' => '<input type="checkbox" data-outward_id="'.$result_row['fd_outward_id'].'" class="ch_outward_id"/> Select for Dispatch Report<br><button class="btn btn-warning bt_edit btn-xs" data-outward_id="'.$result_row['fd_outward_id'].'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-outward_id="'.$result_row['fd_outward_id'].'">Delete</button>');	
	}
	echo (json_encode (array ('outwards' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>