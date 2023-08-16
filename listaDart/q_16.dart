List<int> inverterVetor(List<int> vetor) {
  List<int> vetorInvertido = [];
  for (int i = vetor.length - 1; i >= 0; i--) {
    vetorInvertido.add(vetor[i]);
  }
  return vetorInvertido;
}

void main() {
  List<int> vetorOriginal = [1, 2, 3, 4, 5];
  List<int> vetorInvertido = inverterVetor(vetorOriginal);

  print("Vetor original: $vetorOriginal");
  print("Vetor invertido: $vetorInvertido");
}