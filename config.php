<?php
function getPrivateDir(): string {
    return $_SERVER['HTTP_HOST'] == "localhost" ? "/../private" : "/../httpd.private";
}