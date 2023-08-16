import 'dart:io';

void main() {
  
  stdout.write("Digite o número inicial: ");
  var inicio = int.parse(stdin.readLineSync()!);
  
  stdout.write("Digite o número final: ");
  var fim = int.parse(stdin.readLineSync()!);
  
  var atual = inicio;
  do {
    stdout.write("$atual ");
    atual++;
  } while (atual <= fim);
}
