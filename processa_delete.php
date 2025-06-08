<?php
require_once 'verifica_admin.php';
require_once 'conexao_socars.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $stmt = $pdo->prepare("DELETE FROM usuario WHERE id = :id AND acesso = 'admin'");

    if ($stmt->execute(['id' => $id])) {
        echo "<script>
                alert('Administrador removido com sucesso.');
                window.location.href = 'home.php';
              </script>";
        exit;
    } else {
        echo "Erro ao excluir o administrador.";
    }
}
