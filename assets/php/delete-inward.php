<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['inward_id'])) {
	if ($_SESSION['session_user_type'] === "Administrator" || $_SESSION['session_user_type'] === "Inward") {
		$lc_inward_id = mysqli_real_escape_string ($conn, trim ($_POST['inward_id']));
		$serial_numbers_result = mysqli_query ($conn, "DELETE FROM tb_inward_serial_numbers WHERE fd_inward_id = ".$lc_inward_id.";");
		if ($serial_numbers_result) {
			$result = mysqli_query ($conn, "DELETE FROM tb_inwards WHERE fd_inward_id = ".$lc_inward_id.";");
			if ($result)
				echo (json_encode (array ('success' => "Inward #".$lc_inward_id." Deleted Successfully.")));	
			else
				echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
		} else
			echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
	} else
		echo (json_encode (array ('error' => "Permission Denied")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>