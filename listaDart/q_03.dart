import 'dart:io';

void main() {
  print("Digite a nota da unidade 1: ");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("Digite a nota da unidade 2: ");
  double nota2 = double.parse(stdin.readLineSync()!);
  print("Digite a nota da unidade 3: ");
  double nota3 = double.parse(stdin.readLineSync()!);

  double media = (nota1+nota2+nota3)/3;

  if(media > 7){
    print("Aprovado");
  } else if(media < 5){
    print("Reprovado");
  } else{
    media = media*0.4;
    print("Recuperação, nota necessaria na p4 é $media: ");
  }
}
