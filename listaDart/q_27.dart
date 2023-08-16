class Pilha<T> {
  List<T> _itens = [];

  void push(T item) {
    _itens.add(item);
  }

  T? pop() {
    if (_itens.isNotEmpty) {
      return _itens.removeLast();
    }
    return null;
  }

  T? peek() {
    if (_itens.isNotEmpty) {
      return _itens.last;
    }
    return null;
  }

  bool isEmpty() {
    return _itens.isEmpty;
  }

  int size() {
    return _itens.length;
  }

  @override
  String toString() {
    return _itens.toString();
  }
}

void main() {
  Pilha<int> pilhaInt = Pilha<int>();
  pilhaInt.push(10);
  pilhaInt.push(20);
  pilhaInt.push(30);

  print("Pilha de inteiros: $pilhaInt");
  print("Elemento no topo: ${pilhaInt.peek()}");

  pilhaInt.pop();
  print("Após pop: $pilhaInt");

  print("Tamanho da pilha: ${pilhaInt.size()}");
  print("Pilha vazia? ${pilhaInt.isEmpty()}");

  Pilha<String> pilhaString = Pilha<String>();
  pilhaString.push("A");
  pilhaString.push("B");
  pilhaString.push("C");

  print("Pilha de strings: $pilhaString");
}
