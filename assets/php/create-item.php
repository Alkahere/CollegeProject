<?php
session_start ();
require_once ("connect-database.php");
if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_name']) && isset ($_POST['tx_specification'])) {
	$lc_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_name']));
	$lc_specification = mysqli_real_escape_string ($conn, trim ($_POST['tx_specification']));
	
	$result = mysqli_query ($conn, "INSERT INTO tb_items VALUES (NULL, '".$lc_name."', '".$lc_specification."');");
	if ($result) {
		$lc_item_id = mysqli_insert_id ($conn);
		
		$types = array ();
		if (isset ($_POST['tx_type'])) {		
			$types_multi_query = "INSERT INTO tb_item_types (fd_item_type_id, fd_item_id, fd_type, fd_dirty_bit) VALUES";
			for ($i = 0; $i < count ($_POST['tx_type']); $i++) {
				$lc_type = mysqli_real_escape_string ($conn, trim ($_POST['tx_type'][$i]));
				$types_multi_query .= "(NULL, ".$lc_item_id.", '".$lc_type."', 1),";
				$types[] = $lc_type;
			}
			$types_multi_query = substr_replace ($types_multi_query, ";", -1);
			mysqli_query ($conn, $types_multi_query);
		}
		
		$manufacturers = array ();
		if (isset ($_POST['tx_manufacturer'])) {
			$manufacturers_multi_query = "INSERT INTO tb_item_manufacturers (fd_item_manufacturer_id, fd_item_id, fd_manufacturer, fd_dirty_bit) VALUES";
			for ($i = 0; $i < count ($_POST['tx_manufacturer']); $i++) {
				$lc_manufacturer = mysqli_real_escape_string ($conn, trim ($_POST['tx_manufacturer'][$i]));
				$manufacturers_multi_query .= "(NULL, ".$lc_item_id.", '".$lc_manufacturer."', 1),";
				$manufacturers[] = $lc_manufacturer;
			}
			$manufacturers_multi_query = substr_replace ($manufacturers_multi_query, ";", -1);
			mysqli_query ($conn, $manufacturers_multi_query);
		}
		
		echo (json_encode (array ('success' => "New Item Created Successfully.", 'item' => array ('item_id' => $lc_item_id, 'name' => $lc_name, 'specification' => $lc_specification, 'types' => $types, 'types_count' => count ($types), 'manufacturers' => $manufacturers, 'manufacturers_count' => count ($manufacturers), 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-item_id="'.$lc_item_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-item_id="'.$lc_item_id.'">Delete</button>'))));
	} else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.2")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.1")));
?>