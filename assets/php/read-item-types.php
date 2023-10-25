<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['item_id'])) {
	$query = "SELECT * FROM tb_item_types WHERE fd_item_id = ".$_POST['item_id'].";";
	$result_set = mysqli_query ($conn, $query);
	$types = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$types[] = array ('type_id' => $result_row['fd_item_type_id'], 'type' => $result_row['fd_type']);
	}
	echo (json_encode (array ('types' => $types, 'count' => count ($types))));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>