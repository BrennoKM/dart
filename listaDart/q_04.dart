import 'dart:io';
import 'dart:math';

void main() {
  print("Digite os coeficientes da equação do 2º grau:");
  print("Coeficiente 'a':");
  double a = double.parse(stdin.readLineSync()!);

  print("Coeficiente 'b':");
  double b = double.parse(stdin.readLineSync()!);

  print("Coeficiente 'c':");
  double c = double.parse(stdin.readLineSync()!);

  double delta = calcularDelta(a, b, c);

  if (delta < 0) {
    print("A equação não possui raízes reais.");
  } else if (delta == 0) {
    double raizUnica = calcularRaizUnica(a, b);
    print("A equação possui uma raiz real única: $raizUnica");
  } else {
    List<double> raizes = calcularRaizes(a, b, delta);
    print("A equação possui duas raízes reais:");
    print("Raiz 1: ${raizes[0]}");
    print("Raiz 2: ${raizes[1]}");
  }
}

// Função para calcular o delta
double calcularDelta(double a, double b, double c) {
  return b * b - 4 * a * c;
}

// Função para calcular a raiz única quando delta é igual a zero
double calcularRaizUnica(double a, double b) {
  return -b / (2 * a);
}

// Função para calcular as duas raízes quando delta é maior que zero
List<double> calcularRaizes(double a, double b, double delta) {
  double raiz1 = (-b + sqrt(delta)) / (2 * a);
  double raiz2 = (-b - sqrt(delta)) / (2 * a);
  return [raiz1, raiz2];
}
