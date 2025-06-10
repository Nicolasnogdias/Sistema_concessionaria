<?php

require_once 'conexao_socars.php';
require_once 'verifica_admin.php';
require 'processa_delete.php';

$dados = $pdo -> query("SELECT * FROM usuario WHERE acesso = 'admin'") -> fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table >
        <caption> Lista de Administradores </caption>
        <thead>
            <tr>
                <th> Nome </th>
                <th> Email </th>
                <th> ID </th>
                <th> Deletar </th>
            </tr>
        </thead>
       
      <tbody>
    <?php foreach($dados as $dado): ?>
    <tr>
        <td><?= $dado['nome'] ?></td>
        <td><?= $dado['email'] ?></td>
        <td><?= $dado['id'] ?></td>
        <td>
            <a href="processa_delete.php?id=<?= $dado['id'] ?>" onclick="return confirm('Tem certeza que deseja excluir este administrador?')">
                <button>Excluir</button>
            </a>
        </td>
    </tr>
    <?php endforeach; ?>
</tbody>
</body>
</html>