bool saoAnagramas(String s1, String s2) {
  if (s1.length != s2.length) {
    return false; // Se as strings têm comprimentos diferentes, não podem ser anagramas
  }

  List<int> frequencia = List.filled(26, 0); // Frequência de letras do alfabeto
  int aCharCode = 'a'.codeUnitAt(0); // Código ASCII da letra 'a'

  for (int i = 0; i < s1.length; i++) {
    int charIndex = s1[i].toLowerCase().codeUnitAt(0) - aCharCode;
    frequencia[charIndex]++;
    charIndex = s2[i].toLowerCase().codeUnitAt(0) - aCharCode;
    frequencia[charIndex]--;
  }

  for (int freq in frequencia) {
    if (freq != 0) {
      return false; // Se alguma frequência não for zero, as strings não são anagramas
    }
  }

  return true;
}

void main() {
  String s1 = "PATO";
  String s2 = "TOPA";
  String s3 = "OPTA";
  String s4 = "ABCD";
  String s5 = "BACD";

  print(saoAnagramas(s1, s2)); // true
  print(saoAnagramas(s1, s3)); // true
  print(saoAnagramas(s1, s4)); // false
  print(saoAnagramas(s4, s5)); // false
}
