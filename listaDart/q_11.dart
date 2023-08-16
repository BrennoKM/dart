import 'dart:io';

void main() {
  stdout.write("Informe um número: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero <= 1) {
    print("O número $numero não é primo.");
    return;
  }

  bool ehPrimo = true;

  for (int i = 2; i <= numero / 2; i++) {
    if (numero % i == 0) {
      ehPrimo = false;
      break;
    }
  }

  if (ehPrimo) {
    print("O número $numero é primo.");
  } else {
    print("O número $numero não é primo.");
  }
}
