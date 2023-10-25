<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id'])) {
	$query = "SELECT * FROM tb_dispatch_reports;";
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$response[] = array ("dispatch_report_id" => $result_row['fd_dispatch_report_id'], "dispatch_id" => $result_row['fd_dispatch_id'], "preview" => $result_row['fd_html'], "action" => "<a class='btn btn-primary' target='_blank' href='uploads/".$result_row['fd_file_name'].".pdf'>Print Dispatch Report</a>");	
	}
	echo (json_encode (array ('dispatch_reports' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>