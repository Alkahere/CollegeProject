<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_rmc']) && isset ($_POST['tx_state']) && isset ($_POST['tx_type']) && isset ($_POST['tx_icao']) && isset ($_POST['tx_name']) && isset ($_POST['tx_email']) && isset ($_POST['tx_phone']) && isset ($_POST['tx_address']) && isset ($_POST['tx_incharge_name']) && isset ($_POST['tx_incharge_mobile']) && isset ($_POST['station_id'])) {
	$lc_rmc = mysqli_real_escape_string ($conn, trim ($_POST['tx_rmc']));
	$lc_state = mysqli_real_escape_string ($conn, trim ($_POST['tx_state']));
	$lc_type = mysqli_real_escape_string ($conn, trim ($_POST['tx_type']));
	$lc_icao = mysqli_real_escape_string ($conn, trim ($_POST['tx_icao']));
	$lc_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_name']));	
	$lc_email = mysqli_real_escape_string ($conn, trim ($_POST['tx_email']));
	$lc_phone = mysqli_real_escape_string ($conn, trim ($_POST['tx_phone']));
	$lc_address = mysqli_real_escape_string ($conn, trim ($_POST['tx_address']));
	$lc_incharge_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_incharge_name']));	
	$lc_incharge_mobile = mysqli_real_escape_string ($conn, trim ($_POST['tx_incharge_mobile']));
	$lc_station_id = mysqli_real_escape_string ($conn, trim ($_POST['station_id']));
	
	$result = mysqli_query ($conn, "UPDATE tb_stations SET fd_rmc = '".$lc_rmc."', fd_state = '".$lc_state."', fd_type = '".$lc_type."', fd_icao = '".$lc_icao."', fd_name = '".$lc_name."', fd_email = '".$lc_email."', fd_phone = '".$lc_phone."', fd_address = '".$lc_address."', fd_incharge_name = '".$lc_incharge_name."', fd_incharge_mobile = '".$lc_incharge_mobile."' WHERE fd_station_id = ".$lc_station_id.";");
	
	if ($result)
		echo (json_encode (array ('success' => "Station #".$lc_station_id." Updated Successfully.", 'station' => array ('station_id' => $lc_station_id, 'rmc' => $lc_rmc, 'state' => $lc_state, 'type' => $lc_type, 'icao' => $lc_icao, 'name' => $lc_name, 'email' => $lc_email, 'phone' => $lc_phone, 'address' => $lc_address, 'incharge_name' => $lc_incharge_name, 'incharge_mobile' => $lc_incharge_mobile, 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-station_id="'.$lc_station_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-station_id="'.$lc_station_id.'">Delete</button>'))));	
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.1")));
?>