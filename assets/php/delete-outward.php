<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_SESSION['session_user_type']) && isset ($_POST['outward_id'])) {
	if ($_SESSION['session_user_type'] === "Administrator" || $_SESSION['session_user_type'] === "Outward") {
		$lc_outward_id = mysqli_real_escape_string ($conn, trim ($_POST['outward_id']));
		$serial_numbers_result = mysqli_query ($conn, "DELETE FROM tb_outward_serial_numbers WHERE fd_outward_id = ".$lc_outward_id.";");
		if ($serial_numbers_result) {
			$result = mysqli_query ($conn, "DELETE FROM tb_outwards WHERE fd_outward_id = ".$lc_outward_id.";");
			if ($result)
				echo (json_encode (array ('success' => "Outward #".$lc_outward_id." Deleted Successfully.")));	
			else
				echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
		} else
			echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
	} else 
		echo (json_encode (array ('error' => "Permission Denied")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>