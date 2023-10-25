<?php
session_start ();
require_once ("connect-database.php");
if (isset ($_SESSION['session_user_id'])) {
	if (isset ($_POST['station_id'])) {
		$query = "SELECT * FROM tb_stations WHERE fd_station_id = ".$_POST['station_id'].";";
	} else {
		$query = "SELECT * FROM tb_stations";
		if (isset ($_POST['limit']))
			$query .= " ORDER BY fd_station_id DESC LIMIT ".$_POST['limit'].";";
		else
			$query .= ";";
	}
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$response[] = array ('station_id' => $result_row['fd_station_id'], 'rmc' => $result_row['fd_rmc'], 'state' => $result_row['fd_state'], 'type' => $result_row['fd_type'], 'icao' => $result_row['fd_icao'], 'name' => $result_row['fd_name'], 'email' => $result_row['fd_email'], 'phone' => $result_row['fd_phone'], 'address' => $result_row['fd_address'], 'incharge_name' => $result_row['fd_incharge_name'], 'incharge_mobile' => $result_row['fd_incharge_mobile'], 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-station_id="'.$result_row['fd_station_id'].'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-station_id="'.$result_row['fd_station_id'].'">Delete</button>');	
	}
	echo (json_encode (array ('stations' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>