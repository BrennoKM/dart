import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;
  late double imc;

  Pessoa(this.nome, this.peso, this.altura) {
    calcularIMC();
  }

  void calcularIMC() {
    imc = peso / (altura * altura);
  }
}

void main() {
  print("Quantas pessoas você deseja cadastrar?");
  int quantidadePessoas = int.parse(stdin.readLineSync()!);

  List<Pessoa> pessoas = [];

  for (int i = 0; i < quantidadePessoas; i++) {
    print("Digite o nome da pessoa ${i + 1}:");
    String nome = stdin.readLineSync()!;

    print("Digite o peso da pessoa ${i + 1} (em kg):");
    double peso = double.parse(stdin.readLineSync()!);

    print("Digite a altura da pessoa ${i + 1} (em metros):");
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    pessoas.add(pessoa);
  }

  print("\nLista de Pessoas:");

  for (Pessoa pessoa in pessoas) {
    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso} kg");
    print("Altura: ${pessoa.altura} m");
    print("IMC: ${pessoa.imc.toStringAsFixed(2)}");
    print("------------------------");
  }
}
