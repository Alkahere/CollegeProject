<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_name']) && isset ($_POST['tx_specification']) && isset ($_POST['item_id'])) {
	$lc_item_id = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
	$lc_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_name']));
	$lc_specification = mysqli_real_escape_string ($conn, trim ($_POST['tx_specification']));
	
	$result = mysqli_query ($conn, "UPDATE tb_items SET fd_name = '".$lc_name."', fd_specification = '".$lc_specification."' WHERE fd_item_id = ".$lc_item_id.";");
	
	if ($result) {
		mysqli_query ($conn, "UPDATE tb_item_types SET fd_dirty_bit = 0 WHERE fd_item_id = ".$lc_item_id.";");
		mysqli_query ($conn, "UPDATE tb_item_manufacturers SET fd_dirty_bit = 0 WHERE fd_item_id = ".$lc_item_id.";");
		
		$types = array ();
		if (isset ($_POST['tx_type'])) {
			for ($i = 0; $i < count ($_POST['tx_type']); $i++) {
				$lc_type = mysqli_real_escape_string ($conn, trim ($_POST['tx_type'][$i]));
				$lc_item_type_id = mysqli_real_escape_string ($conn, trim ($_POST['item_type_id'][$i]));
				if ($lc_item_type_id == 0) {
					mysqli_query ($conn, "INSERT INTO tb_item_types VALUES (NULL, ".$lc_item_id.", '".$lc_type."', 1);");
				} else {
					mysqli_query ($conn, "UPDATE tb_item_types SET fd_type = '".$lc_type."', fd_dirty_bit = 1 WHERE fd_item_type_id = ".$lc_item_type_id.";");
				}
				$types[] = $lc_type;
			}	
		}
		mysqli_query ($conn, "DELETE FROM tb_item_types WHERE fd_dirty_bit = 0 AND fd_item_id = ".$lc_item_id.";");
		
		$manufacturers = array ();
		if (isset ($_POST['tx_manufacturer'])) {
			for ($i = 0; $i < count ($_POST['tx_manufacturer']); $i++) {
				$lc_manufacturer = mysqli_real_escape_string ($conn, trim ($_POST['tx_manufacturer'][$i]));
				$lc_item_manufacturer_id = mysqli_real_escape_string ($conn, trim ($_POST['item_manufacturer_id'][$i]));
				if ($lc_item_manufacturer_id == 0) {
					mysqli_query ($conn, "INSERT INTO tb_item_manufacturers VALUES (NULL, ".$lc_item_id.", '".$lc_manufacturer."', 1);");
				} else {
					mysqli_query ($conn, "UPDATE tb_item_manufacturers SET fd_manufacturer = '".$lc_manufacturer."', fd_dirty_bit = 1 WHERE fd_item_manufacturer_id = ".$lc_item_manufacturer_id.";");
				}
				$manufacturers[] = $lc_manufacturer;
			}
		}
		mysqli_query ($conn, "DELETE FROM tb_item_manufacturers WHERE fd_dirty_bit = 0 AND fd_item_id = ".$lc_item_id.";");
		
		echo (json_encode (array ('success' => "Item #".$lc_item_id." Updated Successfully.", 'item' => array ('item_id' => $lc_item_id, 'name' => $lc_name, 'specification' => $lc_specification, 'types' => $types, 'types_count' => count ($types), 'manufacturers' => $manufacturers, 'manufacturers_count' => count ($manufacturers), 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-item_id="'.$lc_item_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-item_id="'.$lc_item_id.'">Delete</button>'))));
	} else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.2")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.1")));
?>