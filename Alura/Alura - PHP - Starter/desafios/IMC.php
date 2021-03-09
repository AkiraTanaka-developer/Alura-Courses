<?php

$peso = 90;
$altura = 1.80;
$imc = $peso / ($altura ** 2);

// if ($imc == 20 || $imc <= 24.9 ) {
//     echo "O seu IMC é $imc, está normal";
// } else if ($imc == 25 || $imc <= 29.9) {
//     echo "O seu IMC é $imc, atenção você está com sobrepeso.";
// } else
//     echo "O seu IMC é $imc, atenção você é considerado obeso!";

echo "Seu IMC é de $imc. Você está com o IMC ";

if ($imc < 18.5) {
    echo "abaixo";
}elseif ($imc < 25) {
    echo "dentro";
}else {
    echo "acima";
}

echo " do recomendado";