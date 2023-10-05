<?php
if ($_SERVER['HTTP_HOST'] == "localhost") {
    define("PRIVATE_DIR", __DIR__ . '/../private');
} else {
    define("PRIVATE_DIR", __DIR__ . '/../httpd.private');
}