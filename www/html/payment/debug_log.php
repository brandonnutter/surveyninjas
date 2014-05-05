<?php
	function debug_log($msg, $eol = true) {
		$debug_file = '/var/www/debug/payment.log';

		$len = strlen($msg);
		$f = fopen($debug_file, 'a');
		if (!$f) die("Error writing debug file");
		if ($f) {
			$w = fwrite($f, $msg, $len);
			if ($eol === true) fwrite($f, "\r\n");
			fclose($f);
		}
	}
?>
