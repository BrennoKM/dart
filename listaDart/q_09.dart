import 'dart:io';

void main() {
  stdout.write("Digite um número (1 a 9): ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 1 && numero <= 9) {
    print("Tabuada do $numero:");

    for (int i = 1; i <= 10; i++) {
      int resultado = numero * i;
      print("$numero x $i = $resultado");
    }
  } else {
    print("Número inválido. Digite um número entre 1 e 9.");
  }
}
