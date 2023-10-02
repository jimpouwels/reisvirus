<?php
// DIRECT ACCESS GRANTED
define("_ACCESS", "GRANTED");
define("CMS_ROOT", dirname(__FILE__) . '/admin');
require_once CMS_ROOT . "/database_config.php";
require_once CMS_ROOT . "/constants.php";
require_once CMS_ROOT . "/frontend/handlers/RequestHandler.php";

$request_handler = new RequestHandler();
$request_handler->handleRequest();
