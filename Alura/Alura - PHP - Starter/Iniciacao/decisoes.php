<?php

$idade = 17;
$numerosDePessoas = 1;

echo "Você só pode entrar se tiver a partir de 18 anos ou ";
echo "a partir de 16 anos acompanhado." . PHP_EOL;

if ($idade >= 18){
    echo "Você tem $idade anos. Bem vindo!"; 
} else if ($idade >= 16 && $numerosDePessoas > 1) {
        echo "Você tem $idade anos e está acompanhado(a), bem vindo.";
    } else {
        echo "Você só tem $idade anos. E não está acompanhado, me desculpe mas você não pode entrar.";
    }

echo PHP_EOL; 
echo "Adeus.";