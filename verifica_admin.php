<?php
session_start();

if (!isset($_SESSION['acesso']) || $_SESSION['acesso'] !== 'admin') {
    echo "<h3>Você não tem permissão para interagir com esta página.</h3>";
    exit;
}
?>
