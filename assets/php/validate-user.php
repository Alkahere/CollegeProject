<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_POST['tx_username']) && isset ($_POST['tx_password'])) {
	$lc_username = mysqli_real_escape_string ($conn, trim ($_POST['tx_username']));
	$lc_password = mysqli_real_escape_string ($conn, trim ($_POST['tx_password']));
	
	$result_set = mysqli_query ($conn, "SELECT fd_user_id, fd_password, fd_role FROM tb_users WHERE fd_username = '".$lc_username."';");
	if (mysqli_num_rows ($result_set) == 1) {
		$result_array = mysqli_fetch_array ($result_set);
		$lc_password_hash = $result_array['fd_password'];
		if (password_verify ($lc_password, $lc_password_hash)) {
			$_SESSION['session_user_id'] = $result_array['fd_user_id'];
			$_SESSION['session_user_type'] = $result_array['fd_role'];
			echo (json_encode (array ('success' => "Welcome to IMD Aviation Inventory")));
		} else
			echo (json_encode (array ('error' => "Wrong password. Try again or click Forgot Password to reset it.")));
	} else 
		echo (json_encode (array ('error' => "Could not find your account.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>