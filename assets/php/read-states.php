<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['rmc'])) {
	$query = "SELECT DISTINCT fd_state FROM tb_stations WHERE fd_rmc = '".$_POST['rmc']."';";
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$response[] = $result_row['fd_state'];	
	}
	echo (json_encode (array ('states' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>