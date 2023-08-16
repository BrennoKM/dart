import 'dart:io';

void main() {
  stdout.write("Informe o número de linhas da matriz: ");
  int linhas = int.parse(stdin.readLineSync()!);

  stdout.write("Informe o número de colunas da matriz: ");
  int colunas = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = [];

  for (int i = 0; i < linhas; i++) {
    List<int> linha = [];

    for (int j = 0; j < colunas; j++) {
      stdout.write("Informe o elemento da posição [$i][$j]: ");
      int elemento = int.parse(stdin.readLineSync()!);
      linha.add(elemento);
    }

    matriz.add(linha);
  }

  print("Matriz informada:");

  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      stdout.write("${matriz[i][j]} ");
    }
    print(""); // Pula para a próxima linha
  }
}
