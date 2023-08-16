class CRUD<T> {
  List<T> data = [];

  void create(T item) {
    data.add(item);
    print("Item adicionado: $item");
  }

  void read() {
    print("Itens na lista:");
    for (var item in data) {
      print(item);
    }
  }

  void update(int index, T newItem) {
    if (index >= 0 && index < data.length) {
      data[index] = newItem;
      print("Item atualizado no índice $index: $newItem");
    } else {
      print("Índice inválido.");
    }
  }

  void delete(int index) {
    if (index >= 0 && index < data.length) {
      var deletedItem = data.removeAt(index);
      print("Item removido no índice $index: $deletedItem");
    } else {
      print("Índice inválido.");
    }
  }
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString() {
    return "Pessoa(nome: $nome, idade: $idade)";
  }
}

void main() {
  CRUD<Integer> crudInt = CRUD<Integer>();
  crudInt.create(Integer(10));
  crudInt.create(Integer(20));
  crudInt.read();
  crudInt.update(0, Integer(15));
  crudInt.delete(1);
  crudInt.read();

  CRUD<Pessoa> crudPessoa = CRUD<Pessoa>();
  crudPessoa.create(Pessoa("Alice", 25));
  crudPessoa.create(Pessoa("Bob", 30));
  crudPessoa.read();
  crudPessoa.update(0, Pessoa("Eve", 28));
  crudPessoa.delete(1);
  crudPessoa.read();
}

class Integer {
  int value;

  Integer(this.value);

  @override
  String toString() {
    return value.toString();
  }
}
