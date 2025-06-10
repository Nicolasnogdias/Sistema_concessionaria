<?php

session_start();
require 'conexao_socars.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1> Seja Bem vindo! </h1>
    <?php if(isset($_SESSION['acesso']) && $_SESSION['acesso'] == 'admin'): ?>
        <h3> O seu acesso é de <?php echo htmlspecialchars($_SESSION['acesso'])?></h3>
        <h3> O seu nome é <?php echo htmlspecialchars($_SESSION['nome'])?></h3>
        <a href="registro_admin.php"> <button> Cadastro de administradores. </button></a>
        <a href="login.php"> <button> Login. </button></a>
        <a href="logout.php"><button> Desconectar. </button> </a>
        <a href="carros_admin.php"><button> Edição de carros. </button></a>
        <a href="lista_admin.php"><button> Lista de administradores. </button></a>
    <?php elseif(isset($_SESSION['acesso']) && $_SESSION['acesso'] == 'cliente'): ?>
        <h3> O seu acesso é de <?php echo htmlspecialchars($_SESSION['acesso'])?></h3>
        <h3> O seu nome é <?php echo htmlspecialchars($_SESSION['nome'])?></h3>
         <a href="carros.php"><button>Carros.</button></a> 
         <a href="logout.php"><button> Desconectar. </button> </a>
    <?php else: ?>
        <a href="registro_user.php"><button>Cadastre-se já!</button></a>
        <a href="login.php"> <button> Login. </button></a>
        <a href="carros.php"><button>Carros.</button></a>
    <?php endif;?>



</body>
</html>
