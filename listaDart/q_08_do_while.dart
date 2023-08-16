import 'dart:io';

void main() {
  final senhaCorreta = "senha123";
  var senhaDigitada;

  do {
    stdout.write("Digite a senha: ");
    senhaDigitada = stdin.readLineSync();
    if (senhaDigitada != senhaCorreta) {
      print("Senha incorreta. Tente novamente.");
    }
  } while (senhaDigitada != senhaCorreta);

  print("Senha correta!");
}
