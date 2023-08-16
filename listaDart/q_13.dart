import 'dart:io';

void main() {
  stdout.write("Informe um número: ");
  int numero = int.parse(stdin.readLineSync()!);

  int fatorial = 1;

  for (int i = 1; i <= numero; i++) {
    fatorial *= i;
  }

  print("$numero! = $fatorial");
}
