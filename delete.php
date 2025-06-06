<?php
require 'conexao_socars.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "DELETE FROM modelo WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':id', $id);

    if ($stmt->execute()) {
    echo "<script>
                alert('Modelo excluído com sucesso.');
                window.history.back();
              </script>";
        exit;
} else {
    echo "Erro ao atualizar o modelo.";
}
}
?>
?>
