<?php
    function thumb ($arq) {
        $caminho = "./images/$arq";
        if (is_null($arq) || !file_exists($caminho)) {
            return "./images/indisponivel.png";
        } else {
            return $caminho;
        }
    }
    ?>