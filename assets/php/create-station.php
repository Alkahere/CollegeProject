<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_rmc']) &&  isset ($_POST['tx_state']) && isset ($_POST['tx_type']) && isset ($_POST['tx_icao']) && isset ($_POST['tx_name']) && isset ($_POST['tx_email']) && isset ($_POST['tx_phone']) && isset ($_POST['tx_address']) && isset ($_POST['tx_incharge_name']) && isset ($_POST['tx_incharge_mobile'])) {
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
	
	$result = mysqli_query ($conn, "INSERT INTO tb_stations VALUES (NULL, '".$lc_rmc."', '".$lc_state."', '".$lc_type."', '".$lc_icao."', '".$lc_name."', '".$lc_email."', '".$lc_phone."', '".$lc_address."', '".$lc_incharge_name."', '".$lc_incharge_mobile."');");
	if ($result) {
		$lc_station_id = mysqli_insert_id ($conn);
		echo (json_encode (array ('success' => "New Station Created Successfully.", 'station' => array ('station_id' => $lc_station_id, 'rmc' => $lc_rmc, 'state' => $lc_state, 'type' => $lc_type, 'icao' => $lc_icao, 'name' => $lc_name, 'email' => $lc_email, 'phone' => $lc_phone, 'address' => $lc_address, 'incharge_name' => $lc_incharge_name, 'incharge_mobile' => $lc_incharge_mobile, 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-station_id="'.$lc_station_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-station_id="'.$lc_station_id.'">Delete</button>'))));
	}
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>