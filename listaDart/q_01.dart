import 'dart:io';

void main() {
  // Solicitar o peso e a altura da pessoa
  print("Digite o peso (em kg):");
  double peso = double.parse(stdin.readLineSync()!);

  print("Digite a altura (em metros):");
  double altura = double.parse(stdin.readLineSync()!);

  // Verificar se a altura é diferente de zero antes de calcular o IMC
  if (altura != 0) {
    // Calcular o IMC7
    double imc = calcularIMC(peso, altura);

    // Exibir o resultado do IMC
    print("O IMC da pessoa é: $imc");
  } else {
    // Exibir um alerta caso a altura seja zero
    print("Erro: A altura não pode ser zero. Divisão por zero.");
  }
}

// Função para calcular o IMC
double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}