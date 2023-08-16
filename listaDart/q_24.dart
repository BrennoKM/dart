int calcularFatorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calcularFatorial(n - 1);
  }
}

void main() {
  int numero = 5;
  int resultado = calcularFatorial(numero);
  print("O fatorial de $numero é $resultado");
}
