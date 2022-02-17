<?php
    function thumb ($arq) {
        $caminho = "./images/$arq";
        if (is_null($arq) || !file_exists($caminho)) {
            return "./images/indisponivel.png";
        } else {
            return $caminho;
        }
    }

    function voltar() {
        return "<a href='index.php'><span class='material-icons black01'>arrow_circle_left</span></a>";
    }