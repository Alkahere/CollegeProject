<?php
session_start ();
if (isset ($_SESSION['session_user_id']) && isset ($_SESSION['session_user_type'])) {
	session_unset ();
	echo (json_encode (array ('target' => "login.html")));
}
?>