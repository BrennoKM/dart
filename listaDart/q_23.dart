import 'dart:io';

void main() {
  print("Digite uma frase:");
  String frase = stdin.readLineSync()!;

  Map<String, int> contagemPalavras = contarPalavras(frase);

  contagemPalavras.forEach((palavra, quantidade) {
    print("$palavra = $quantidade");
  });

  salvarCSV(contagemPalavras);

  print("Contagem de palavras salva no arquivo contagem.csv");

  lerCSV();
}

Map<String, int> contarPalavras(String frase) {
  List<String> palavras = frase.split(" ");
  Map<String, int> contagem = {};

  for (String palavra in palavras) {
    contagem.update(palavra, (value) => value + 1, ifAbsent: () => 1);
  }

  return contagem;
}

void salvarCSV(Map<String, int> contagem) {
  var file = File('contagem.csv');
  var sink = file.openWrite();

  sink.writeln('Palavra,Quantidade');

  contagem.forEach((palavra, quantidade) {
    sink.writeln('$palavra,$quantidade');
  });

  sink.close();
}

void lerCSV() {
  var file = File('contagem.csv');
  var lines = file.readAsLinesSync();

  for (var i = 1; i < lines.length; i++) {
    var parts = lines[i].split(',');
    var palavra = parts[0];
    var quantidade = int.parse(parts[1]);

    print("$palavra = $quantidade");
  }
}
