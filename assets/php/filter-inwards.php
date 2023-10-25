<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id'])) {
	$query = "SELECT * FROM tb_inwards WHERE 1";
	if (isset ($_POST['tx_date'])) {
		$lc_dates = explode ("-", $_POST['tx_date']);
		$lc_dates[0] = date ("Y-m-d", strtotime ($lc_dates[0]));
		$lc_dates[1] = date ("Y-m-d", strtotime ($lc_dates[1]));
		$query .= " AND fd_date BETWEEN '".$lc_dates[0]."' AND '".$lc_dates[1]."'";
	} 
	if (isset ($_POST['station_id'])) {
		$lc_station_id = mysqli_real_escape_string ($conn, trim ($_POST['station_id']));
		if ($lc_station_id != 0)
			$query .= " AND fd_station_id = ".$lc_station_id;	
	}
	
	if (isset ($_POST['item_id'])) {
		$lc_item_id = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
		if ($lc_item_id != 0)
			$query .= " AND fd_item_id = ".$lc_item_id;	
	}	
	
	if (isset ($_POST['item_type_id'])) {
		if ($_POST['item_type_id'] !== "") {
			$lc_item_type_id = mysqli_real_escape_string ($conn, trim ($_POST['item_type_id']));
			$query .= " AND fd_item_type_id = ".$lc_item_type_id;
		}
	}
	
	if (isset ($_POST['item_manufacturer_id'])) {
		if ($_POST['item_manufacturer_id'] !== "") {
			$lc_item_manufacturer_id = mysqli_real_escape_string ($conn, trim ($_POST['item_manufacturer_id']));
			$query .= " AND fd_item_manufacturer_id = ".$lc_item_manufacturer_id;	
		}
	}
	
	if (isset ($_POST['tx_mode_of_receiving'])) {
		if ($_POST['tx_mode_of_receiving']!==""){
			$lc_mode = mysqli_real_escape_string ($conn, trim ($_POST['tx_mode_of_receiving']));
			$query .= " AND fd_mode_of_receiving = '".$lc_mode."'";	
		}
	}
	
	if (isset ($_POST['tx_remarks'])) {
		if ($_POST['tx_remarks']!==""){
			$lc_remarks = mysqli_real_escape_string ($conn, trim ($_POST['tx_remarks']));
			$query .= " AND fd_remarks LIKE '%".$lc_remarks."%'";
		}
	}
	$query .= ";";
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$serial_numbers_query = "SELECT * FROM tb_inward_serial_numbers WHERE fd_inward_id = ".$result_row['fd_inward_id'].";";
		$serial_numbers_result_set = mysqli_query ($conn, $serial_numbers_query);
		$serial_numbers = array ();
		while ($serial_numbers_result_row = mysqli_fetch_array ($serial_numbers_result_set)) {
			$serial_numbers[] = $serial_numbers_result_row['fd_serial_number'];
		}
		$item_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_name FROM tb_items WHERE fd_item_id = ".$result_row['fd_item_id'].";"));
		$lc_item_name = $item_result_row[0];
		$item_type_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_type FROM tb_item_types WHERE fd_item_type_id = ".$result_row['fd_item_type_id'].";"));
		$lc_item_type = $item_type_result_row[0];
		$item_manufacturer_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_manufacturer FROM tb_item_manufacturers WHERE fd_item_manufacturer_id = ".$result_row['fd_item_manufacturer_id'].";"));
		$lc_item_manufacturer = $item_manufacturer_result_row[0];
		$station_result_array = mysqli_fetch_array (mysqli_query ($conn, "SELECT fd_station_id, fd_name FROM tb_stations WHERE fd_station_id = ".$result_row['fd_station_id'].";"));
		
		$response[] = array ('inward_id' => $result_row['fd_inward_id'], 'date' => date ('m/d/Y', strtotime ($result_row['fd_date'])), 'station_id' => $result_row['fd_station_id'], 'station' => $station_result_array['fd_name'], 'item' => $lc_item_name, 'item_id' => $result_row['fd_item_id'], 'item_type' => $lc_item_type, 'item_type_id' => $result_row['fd_item_type_id'], 'item_manufacturer' => $lc_item_manufacturer, 'item_manufacturer_id' => $result_row['fd_item_manufacturer_id'], 'quantity' => $result_row['fd_quantity'], 'serial_numbers' => $serial_numbers, 'serial_numbers_count' => count ($serial_numbers), 'rate' => $result_row['fd_rate'], 'mode_of_receiving' => $result_row['fd_mode_of_receiving'], 'remarks' =>  $result_row['fd_remarks'], 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-inward_id="'.$result_row['fd_inward_id'].'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-inward_id="'.$result_row['fd_inward_id'].'">Delete</button>');	
	}
	echo (json_encode (array ('inwards' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>