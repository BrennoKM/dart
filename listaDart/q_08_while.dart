import 'dart:io';

void main() {
  final senhaCorreta = "senha123";
  stdout.write("Digite a senha: ");
  var senhaDigitada = stdin.readLineSync();

  while (senhaDigitada != senhaCorreta) {
    stdout.write("Senha incorreta. Digite novamente: ");
    senhaDigitada = stdin.readLineSync();
  }

  print("Senha correta!");
}
