<?php

namespace reisvirus\reisvirus;

define("PUBLIC_ROOT", __DIR__);
define("PRIVATE_ROOT", PUBLIC_ROOT . "/../httpd.private");
define("OBCATO_ROOT", PRIVATE_ROOT . "/vendor/obcato/obcato/src");

require_once OBCATO_ROOT . "/bootstrap.php";