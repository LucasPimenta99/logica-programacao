#!/bin/bash

echo "Bem-vindo à calculadora simples!"
echo "Escolha a operação:"
echo "1. Soma (+)"
echo "2. Subtração (-)"
echo "3. Multiplicação (*)"
echo "4. Divisão (/)"
read -p "Digite o número da operação desejada: " operacao

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

case $operacao in
  1)
    resultado=$(echo "$num1 + $num2" | bc)
    echo "Resultado: $resultado"
    ;;
  2)
    resultado=$(echo "$num1 - $num2" | bc)
    echo "Resultado: $resultado"
    ;;
  3)
    resultado=$(echo "$num1 * $num2" | bc)
    echo "Resultado: $resultado"
    ;;
  4)
    if [ "$num2" == "0" ]; then
      echo "Erro: divisão por zero não é permitida."
    else
      resultado=$(echo "scale=2; $num1 / $num2" | bc)
      echo "Resultado: $resultado"
    fi
    ;;
  *)
    echo "Operação inválida!"
    ;;
esac

