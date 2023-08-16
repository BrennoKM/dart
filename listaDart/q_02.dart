import 'dart:io';
import 'dart:math';

void main() {
  double raio = 0;

  // Solicitar o valor do raio até que seja inserido um valor positivo
  while (raio <= 0) {
    print("Digite o valor do raio (deve ser positivo):");
    raio = double.tryParse(stdin.readLineSync()!) ?? 0;

    if (raio <= 0) {
      print("Valor inválido! O raio deve ser positivo.");
    }
  }

  // Calcular a área do círculo
  double area = calcularAreaCirculo(raio);

  // Exibir o resultado da área
  print("A área do círculo é: $area");
}

// Função para calcular a área do círculo
double calcularAreaCirculo(double raio) {
  return pi * raio * raio;
}
