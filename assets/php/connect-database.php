<?php
$server_name = "localhost";
$user_name = "root";
$password = "";
$database_name = "db_imd_aviation_inventory";

$conn = mysqli_connect ($server_name, $user_name, $password, $database_name);
if (!$conn)
	die ("Database connection failed: ".mysqli_connect_error ());
else
	mysqli_set_charset ($conn, 'utf8');
?>