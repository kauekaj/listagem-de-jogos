<pre>
<?php
    $banco = new mysqli("localhost", "root", "", "bd_games");
    if($banco->connect_errno) {
        echo "<p>Encontrei um erro $banco->errno --> $banco->connect_error</p>";
        die();
    }

    $busca = $banco->query("select * from generos");
    if(!$busca) {
        echo "<p>Falha na busca! $banco->error</p>";
    } else {
        while($reg = $busca->fetch_object()) {
            print_r($reg);
        }
    }

    $busca = $banco->query("select * from jogos");
    if(!$busca) {
        echo "<p>Flaha na busca por jogos $banco->error-</p>";
    } else {
        while($regjg = $busca->fetch_object()) {
            print_r($regjg);
        }
    }

?>