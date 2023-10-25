<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_SESSION['session_user_type']) && isset ($_POST['tx_pw']) && isset ($_POST['tx_nw']) && isset ($_POST['tx_remarks']) && isset ($_POST['tx_action_taken']) && isset ($_POST['outward_id'])) {
	if ($_SESSION['session_user_type'] === "Administrator" || $_SESSION['session_user_type'] === "Outward") {
		$lc_outward_id = mysqli_real_escape_string ($conn, trim ($_POST['outward_id']));
        $lc_pw = mysqli_real_escape_string ($conn, trim ($_POST['tx_pw']));
        $lc_nw = mysqli_real_escape_string ($conn, trim ($_POST['tx_nw']));
		$lc_remarks = mysqli_real_escape_string ($conn, trim ($_POST['tx_remarks']));
        $lc_action_taken = mysqli_real_escape_string ($conn, trim ($_POST['tx_action_taken']));

		$lc_item_type_id = (isset ($_POST['item_type_id'])) ? mysqli_real_escape_string ($conn, trim ($_POST['item_type_id'])) : 0;
		$lc_item_manufacturer_id = (isset ($_POST['item_manufacturer_id'])) ? mysqli_real_escape_string ($conn, trim ($_POST['item_manufacturer_id'])) : 0;

		$result = mysqli_query ($conn, "UPDATE tb_outwards SET fd_partial_working = ".$lc_pw.", fd_not_working = ".$lc_nw.", fd_fault_remarks = '".$lc_remarks."', fd_action_taken = '".$lc_action_taken."' WHERE fd_outward_id = ".$lc_outward_id.";");

        if ($result) {
          echo (json_encode (array ('success' => "Status of Outward #".$lc_outward_id." Updated Successfully.")));
		} else
			echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
	} else
		echo (json_encode (array ('error' => "Permission Denied")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>