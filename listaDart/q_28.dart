import 'q_27.dart';

bool validaParenteses(String str) {
  Pilha<String> pilha = Pilha<String>();

  for (int i = 0; i < str.length; i++) {
    String caractere = str[i];

    if (caractere == "(") {
      pilha.push(caractere);
    } else if (caractere == ")") {
      if (pilha.isEmpty()) {
        return false; // Encontrou um fechamento sem um correspondente aberto
      }
      pilha.pop();
    }
  }

  return pilha.isEmpty(); // Se a pilha estiver vazia, todos os parênteses foram fechados corretamente
}

void main() {
  String str1 = "()((a))(a(()))";
  String str2 = "()()";
  String str3 = "(a)b";
  String str4 = "(a)(b)";
  String str5 = "((";
  String str6 = "(a)(b";
  String str7 = ")(";
  String str8 = ")a()b(";

  print(validaParenteses(str1)); // true
  print(validaParenteses(str2)); // true
  print(validaParenteses(str3)); // true
  print(validaParenteses(str4)); // true
  print(validaParenteses(str5)); // false
  print(validaParenteses(str6)); // false
  print(validaParenteses(str7)); // false
  print(validaParenteses(str8)); // false
}
