import 'dart:io';

void main(){
String aluno1, aluno2;
double n1,n2,n3,n4, res1, res2;
print("Entre com o nome do primeiro aluno: ");
aluno1 = stdin.readLineSync()!;
print("Entre com o nome do segundo aluno: ");
aluno2 = stdin.readLineSync()!;
print("Entre com a nota do primeiro aluno: ");
n1 = double.parse(stdin.readLineSync()!);
print("Entre com a nota do primeiro aluno: ");
n2 = double.parse(stdin.readLineSync()!);
print("Entre com a nota do segundo aluno: ");
n3 = double.parse(stdin.readLineSync()!);
print("Entre com a nota do segundo aluno: ");
n4 = double.parse(stdin.readLineSync()!);

res1 = (n1+n2)/2;
res2 = (n3+n4)/2;

if (res1>=7){
  print("Aluno: ${aluno1} foi Aprovado");
}if(res2>=7){
  print("Aluno: ${aluno2} foi Aprovado");
}
if (res1>=4&&res1<7){
  print("Aluno: ${aluno1} Exame");
}if(res2>=4&&res2<7){
  print("Aluno: ${aluno2} Exame");
}
if (res1<4){
  print("Aluno: ${aluno1} Reprovado");
}if(res2<4){
  print("Aluno: ${aluno2} Reprovado");
}

}
