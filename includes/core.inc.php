<?php
	ob_start();
?>
<?php
	$server = "localhost";
	$user =  "root";
	$password = "";
	$dbname = "macchange";
	// ------this connects my website to my data base
	$connection = mysqli_connect($server, $user, $password, $dbname) or die("sorry connection to server failed");
?>
