<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['station_id'])) {
	$lc_station_id = mysqli_real_escape_string ($conn, trim ($_POST['station_id']));
	$result = mysqli_query ($conn, "DELETE FROM tb_stations WHERE fd_station_id = ".$lc_station_id.";");
	
	if ($result)
		echo (json_encode (array ('success' => "Station #".$lc_station_id." Deleted Successfully.")));	
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.1")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.2")));
?>