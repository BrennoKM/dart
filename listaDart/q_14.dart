import 'dart:io';
import 'dart:math';

int calcularFatorial(int numero) {
  int fatorial = 1;
  for (int i = 1; i <= numero; i++) {
    fatorial *= i;
  }
  return fatorial;
}

void main() {
  int opcao = -1;

  while (opcao != 0) {
    print("Menu de Opções:");
    print("1 - Potenciação");
    print("2 - Raiz Quadrada");
    print("3 - Fatorial");
    print("0 - Sair");
    stdout.write("Escolha uma opção: ");
    opcao = int.parse(stdin.readLineSync()!);

    if (opcao == 1) {
      stdout.write("Informe a base: ");
      double base = double.parse(stdin.readLineSync()!);
      stdout.write("Informe o expoente: ");
      double expoente = double.parse(stdin.readLineSync()!);
      num resultado = pow(base, expoente);
      print("Resultado: $resultado");
    } else if (opcao == 2) {
      stdout.write("Informe o número: ");
      double numero = double.parse(stdin.readLineSync()!);
      double resultado = sqrt(numero);
      print("Resultado: $resultado");
    } else if (opcao == 3) {
      stdout.write("Informe um número para calcular o fatorial: ");
      int numero = int.parse(stdin.readLineSync()!);
      int resultado = calcularFatorial(numero);
      print("Resultado: $resultado");
    } else if (opcao == 0) {
      print("Saindo...");
    } else {
      print("Opção inválida!");
    }
  }
}
