<?php
require_once 'vendor/autoload.php';

try {
	$redis = new Predis\Client(array(
		"scheme" => "tcp",
		"host" => "hostname",
		"port" => "6379",
		"password” => “password"));
	
	$redis->set("foo", "bar");
	$value = $redis->get("foo");
	var_dump($value);


}
catch (Exception $e) {
	die($e->getMessage());
}