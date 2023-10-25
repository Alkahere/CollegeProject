<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id'])) {
	if (isset ($_POST['item_id'])) {
		$query = "SELECT * FROM tb_items WHERE fd_item_id = ".$_POST['item_id'].";";
	} else {
		$query = "SELECT * FROM tb_items";
		if (isset ($_POST['limit']))
			$query .= " ORDER BY fd_item_id DESC LIMIT ".$_POST['limit'].";";
		else
			$query .= ";";
	}
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$item_types_query = "SELECT * FROM tb_item_types WHERE fd_item_id = ".$result_row['fd_item_id'].";";
		$item_types_result_set = mysqli_query ($conn, $item_types_query);
		$types = array ();
		while ($item_types_result_row = mysqli_fetch_array ($item_types_result_set)) {
			$types[] = array ('item_type_id' => $item_types_result_row['fd_item_type_id'], 'type' => $item_types_result_row['fd_type']);
		}
		
		$item_manufacturers_query = "SELECT * FROM tb_item_manufacturers WHERE fd_item_id = ".$result_row['fd_item_id'].";";
		$item_manufacturers_result_set = mysqli_query ($conn, $item_manufacturers_query);
		$manufacturers = array ();
		while ($item_manufacturers_result_row = mysqli_fetch_array ($item_manufacturers_result_set)) {
			$manufacturers[] = array ('item_manufacturer_id' => $item_manufacturers_result_row['fd_item_manufacturer_id'], 'manufacturer' => $item_manufacturers_result_row['fd_manufacturer']);
		}
		$response[] = array ('item_id' => $result_row['fd_item_id'], 'name' => $result_row['fd_name'], 'specification' => $result_row['fd_specification'], 'types' => $types, 'types_count' => count ($types), 'manufacturers' => $manufacturers, 'manufacturers_count' => count ($manufacturers), 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-item_id="'.$result_row['fd_item_id'].'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-item_id="'.$result_row['fd_item_id'].'">Delete</button>');	
	}
	echo (json_encode (array ('items' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>