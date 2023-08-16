int somatorioIntervalo(int inicio, int fim) {
  if (inicio > fim) {
    return 0;
  } else {
    return inicio + somatorioIntervalo(inicio + 1, fim);
  }
}

void main() {
  int numeroInicio = 1;
  int numeroFim = 5;
  int resultado = somatorioIntervalo(numeroInicio, numeroFim);
  print("O somatório dos números inteiros de $numeroInicio a $numeroFim é $resultado");
}
