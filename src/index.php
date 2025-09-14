<?php

namespace reisvirus\reisvirus;

define("PRIVATE_DIR", __DIR__ . "/../httpd.private");
define("OBCATO_ROOT", PRIVATE_DIR . "/vendor/obcato/obcato/src");

require_once OBCATO_ROOT . "/bootstrap.php";

\Obcato\render();