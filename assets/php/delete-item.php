<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['item_id'])) {
	$lc_item_id = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
	$item_manufacturers_result = mysqli_query ($conn, "DELETE FROM tb_item_manufacturers WHERE fd_item_id = ".$lc_item_id.";");
	if ($item_manufacturers_result) {
		$item_types_result = mysqli_query ($conn, "DELETE FROM tb_item_types WHERE fd_item_id = ".$lc_item_id.";");
		if ($item_types_result) {
			$result = mysqli_query ($conn, "DELETE FROM tb_items WHERE fd_item_id = ".$lc_item_id.";");
			if ($result)
				echo (json_encode (array ('success' => "Item #".$lc_item_id." Deleted Successfully.")));	
			else
				echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.4")));
		} else
			echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.3")));
	} else
			echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.2")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.1")));
?>