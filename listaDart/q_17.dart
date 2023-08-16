void main() {
  List<int> vetor = [5, 3, 8, 1, 10, 2];

  int maior = vetor[0];
  int menor = vetor[0];

  for (int i = 1; i < vetor.length; i++) {
    if (vetor[i] > maior) {
      maior = vetor[i];
    }

    if (vetor[i] < menor) {
      menor = vetor[i];
    }
  }

  print("Vetor: $vetor");
  print("Maior número: $maior");
  print("Menor número: $menor");
}
