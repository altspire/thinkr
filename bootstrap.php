<?php
require_once 'vendor/autoload.php';

try {
	$redis = new Predis\Client(array(
		"scheme" => "tcp",
		"host" => "hostname",
		"port" => 6379,
		"password” => “password"));
	echo "Connected to Redis";
}
catch (Exception $e) {
	die($e->getMessage());
}