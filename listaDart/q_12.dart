import 'dart:io';

void main() {
  stdout.write("Informe o número inicial: ");
  int numeroInicial = int.parse(stdin.readLineSync()!);

  stdout.write("Informe o número final: ");
  int numeroFinal = int.parse(stdin.readLineSync()!);

  int somatorio = 0;

  for (int i = numeroInicial; i <= numeroFinal; i++) {
    somatorio += i;
  }

  print("O somatório dos números no intervalo de $numeroInicial a $numeroFinal é: $somatorio");
}
