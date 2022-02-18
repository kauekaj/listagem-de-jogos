<?php
    require_once "includes/banco.php";
    require_once "includes/login.php";
    require_once "includes/funcoes.php";
    ?>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Editor</title>
</head>

<body>
    <div id="corpo">
        <?php
            if (!is_logado()) {
                echo msg_erro("Efetue <a href='user-login.php'>login</a> para poder editar seus dados.");
            } else {
                if(!isset($_POST['usuario'])) {
                    include "user-edit-form.php";
                } else {
                    echo msg_sucesso("Dados foram recebidos");
                }
            }
             
        ?>
    </div>
    <?php require_once "rodape.php"; ?>
</body>

</html>