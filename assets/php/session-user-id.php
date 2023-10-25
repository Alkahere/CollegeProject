<?php
session_start ();
if (isset ($_SESSION['session_user_id']))
	echo (json_encode (array ('target' => "#")));
else
	echo (json_encode (array ('target' => "login.html")));
?>