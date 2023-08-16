import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';

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

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'peso': peso,
      'altura': altura,
      'imc': imc,
    };
  }

  Pessoa.fromJson(Map<String, dynamic> json)
      : nome = json['nome'],
        peso = json['peso'],
        altura = json['altura'],
        imc = json['imc'];
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

  // Gravar os resultados em um arquivo binário
  File arquivo = File('resultados.bin');
  var dados = jsonEncode(pessoas.map((pessoa) => pessoa.toJson()).toList());
  arquivo.writeAsBytesSync(Uint8List.fromList(dados.codeUnits));

  print("Resultados salvos no arquivo 'resultados.bin'");

  // Ler os resultados do arquivo binário
  List<Pessoa> pessoasLidas = [];
  List<dynamic> dadosLidos = jsonDecode(arquivo.readAsStringSync());
  dadosLidos.forEach((item) {
    Pessoa pessoa = Pessoa.fromJson(item);
    pessoasLidas.add(pessoa);
  });

  print("\nLista de Pessoas (lidas do arquivo):");

  for (Pessoa pessoa in pessoasLidas) {
    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso} kg");
    print("Altura: ${pessoa.altura} m");
    print("IMC: ${pessoa.imc.toStringAsFixed(2)}");
    print("------------------------");
  }
}
