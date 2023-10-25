<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['item_id'])) {
	$query = "SELECT * FROM tb_item_manufacturers WHERE fd_item_id = ".$_POST['item_id'].";";
	$result_set = mysqli_query ($conn, $query);
	$manufacturers = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$manufacturers[] = array ('manufacturer_id' => $result_row['fd_item_manufacturer_id'], 'manufacturer' => $result_row['fd_manufacturer']);
	}
	echo (json_encode (array ('manufacturers' => $manufacturers, 'count' => count ($manufacturers))));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>