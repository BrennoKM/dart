import 'dart:io';

void main() {
  print("Digite uma frase:");
  String frase = stdin.readLineSync()!;

  Map<String, int> contagemPalavras = contarPalavras(frase);

  contagemPalavras.forEach((palavra, quantidade) {
    print("$palavra = $quantidade");
  });
}

Map<String, int> contarPalavras(String frase) {
  List<String> palavras = frase.split(" ");
  Map<String, int> contagem = {};

  for (String palavra in palavras) {
    contagem.update(palavra, (value) => value + 1, ifAbsent: () => 1);
  }

  return contagem;
}
