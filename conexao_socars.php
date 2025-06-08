<?php
$host = 'localhost';
$db = 'socars';
$user = 'root';
$pass = 'ga29052007@#$';
    
    try {
        $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8", $user,$pass);
        } catch (PDOException $e) {
            echo "Erro na conexão: " . $e->getMessage();
            exit;
        }
