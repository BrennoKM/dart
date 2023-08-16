import 'dart:io';

void main() {
  
  stdout.write("Digite o número inicial: ");
  var inicio = int.parse(stdin.readLineSync()!);
  
  stdout.write("Digite o número final: ");
  var fim = int.parse(stdin.readLineSync()!);
  
  for (var atual = inicio; atual <= fim; atual++) {
    stdout.write("$atual ");
  }
}
