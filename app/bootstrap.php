<?php
require_once 'vendor/autoload.php';

try {
        $redis = new Predis\Client(array(
                "scheme" => "tcp",
                "host" => "redis",
                "port" => "6379"));

        $redis->set("foo", "bar");
        $value = $redis->get("foo");
        var_dump($value);


}
catch (Exception $e) {
        die($e->getMessage());
}