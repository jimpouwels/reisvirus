<?php
require_once "discovery.php";
require_once PRIVATE_DIR . "/database_config.php";
require_once CMS_ROOT . "/constants.php";
require_once CMS_ROOT . "/frontend/handlers/RequestHandler.php";

$request_handler = new RequestHandler();
$request_handler->handleRequest();
