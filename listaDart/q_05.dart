import 'dart:io';

void main() {
  print("Digite um número inteiro entre 1 e 5:");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 1 && numero <= 5) {
    String numeroPorExtenso = numeroPorExtenso15(numero);
    print("O número por extenso é: $numeroPorExtenso");
  } else {
    print("Valor inválido.");
  }
}

String numeroPorExtenso15(int numero) {
  switch (numero) {
    case 1:
      return "Um";
    case 2:
      return "Dois";
    case 3:
      return "Três";
    case 4:
      return "Quatro";
    case 5:
      return "Cinco";
    default:
      return "";
  }
}
