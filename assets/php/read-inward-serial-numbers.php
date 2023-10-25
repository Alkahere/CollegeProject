<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['item_id'])) {
	$lc_item_id = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
	$query = "SELECT isn.fd_inward_serial_number_id, isn.fd_serial_number FROM tb_inwards as i, tb_inward_serial_numbers as isn WHERE i.fd_inward_id = isn.fd_inward_id AND i.fd_item_id = ".$lc_item_id." AND isn.fd_inward_serial_number_id NOT IN (SELECT fd_inward_serial_number_id FROM tb_outward_serial_numbers);";

	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		
		$response[] = array ('inward_serial_number_id' => $result_row['fd_inward_serial_number_id'], 'serial_number' => $result_row['fd_serial_number']);	
	}
	echo (json_encode (array ('inward_serial_numbers' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>