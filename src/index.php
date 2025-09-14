<?php

namespace reisvirus\reisvirus;

define("PRIVATE_DIR_LOCAL", "/../private");
define("PRIVATE_DIR_PRODUCTION", "/../httpd.private");

require_once "bootstrap.php";

\Obcato\render();