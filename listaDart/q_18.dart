import 'dart:io';

void main() {
  print("Digite uma frase:");
  String frase = stdin.readLineSync()!;

  String fraseInvertida = inverterFrase(frase);

  print("Frase original: $frase");
  print("Frase invertida: $fraseInvertida");
}

String inverterFrase(String frase) {
  List<String> palavras = frase.split(" ");
  List<String> palavrasInvertidas = [];

  for (String palavra in palavras) {
    String palavraInvertida = "";
    for (int i = palavra.length - 1; i >= 0; i--) {
      palavraInvertida += palavra[i];
    }
    palavrasInvertidas.add(palavraInvertida);
  }

  return palavrasInvertidas.join(" ");
}
