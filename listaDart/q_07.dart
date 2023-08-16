import 'dart:io';

void main() {

  stdout.write("Digite o número inicial: ");
  var inicio = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o número final: ");
  var fim = int.parse(stdin.readLineSync()!);

  // Utilizando while
  var atual = inicio;
  while (atual <= fim) {
    if (atual % 2 != 0) {
      stdout.write("$atual ");
    }
    atual++;
  }
  stdout.write("\n");

  // Utilizando do-while
  atual = inicio;
  do {
    if (atual % 2 != 0) {
      stdout.write("$atual ");
    }
    atual++;
  } while (atual <= fim);
  stdout.write("\n");

  // Utilizando for
  for (var atual = inicio; atual <= fim; atual++) {
    if (atual % 2 != 0) {
      stdout.write("$atual ");
    }
  }
  stdout.write("\n");
}
