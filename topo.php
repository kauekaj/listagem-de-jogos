<?php

echo "<p class='pequeno' >";
if(empty($_SESSION['user'])) {    
    echo  "<a href='user-login.php#'>Entrar</a>" ;
} else {
    echo "Olá, <strong>" . $_SESSION['nome'] . "</strong> | ";
    echo "<a href='#'>Sair</a>";
}
echo "</p>";
