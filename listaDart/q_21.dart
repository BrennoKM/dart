import 'dart:io';

void main() {
  print("Digite uma palavra:");
  String palavra = stdin.readLineSync()!;

  Map<String, int> contagemLetras = contarLetras(palavra);

  contagemLetras.forEach((letra, quantidade) {
    print("$letra = $quantidade");
  });
}

Map<String, int> contarLetras(String palavra) {
  Map<String, int> contagem = {};

  for (int i = 0; i < palavra.length; i++) {
    String letra = palavra[i];
    contagem.update(letra, (value) => value + 1, ifAbsent: () => 1);
  }

  return contagem;
}
