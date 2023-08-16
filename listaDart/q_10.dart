import 'dart:io';

void main() {
  stdout.write("Informe o investimento inicial: ");
  double investimentoInicial = double.parse(stdin.readLineSync()!);

  stdout.write("Informe o investimento mensal: ");
  double investimentoMensal = double.parse(stdin.readLineSync()!);

  stdout.write("Informe a taxa de juros mensal (em decimal): ");
  double taxaJurosMensal = double.parse(stdin.readLineSync()!);

  stdout.write("Informe a quantidade de meses: ");
  int quantidadeMeses = int.parse(stdin.readLineSync()!);

  double saldoAcumulado = investimentoInicial;

  print("\nMês\tInvestimento\tSaldo Acumulado");

  for (int mes = 1; mes <= quantidadeMeses; mes++) {
    double rendimentoMensal = saldoAcumulado * taxaJurosMensal;
    saldoAcumulado = saldoAcumulado + investimentoMensal + rendimentoMensal;

    print("$mes\t\$${investimentoMensal.toStringAsFixed(2)}\t\t\$${saldoAcumulado.toStringAsFixed(2)}");
  }
}
