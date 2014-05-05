<?php
	error_reporting(E_ALL ^ E_NOTICE); 

	require_once (dirname(__FILE__).'/debug_log.php');

	debug_log("Google Checkout Notification");
	debug_log("SERVER:".var_export($_SERVER, true));
	debug_log("POST:".var_export($_POST, true));

?>
