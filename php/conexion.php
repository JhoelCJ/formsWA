<?php
$servername = "localhost";
$username = "admin";
$password = "admin";
$database = "wa_form";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Error de conexión");
}
?>
