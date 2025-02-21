import 'dart:io';

void main(){
String aluno1, aluno2;
double n1,n2;
print("Entre com o nome da primeira pessoa: ");
aluno1 = stdin.readLineSync()!;
print("Entre com o nome da segunda pessoa: ");
aluno2 = stdin.readLineSync()!;
print("Entre com a idade da primeira pessoa: ");
n1 = double.parse(stdin.readLineSync()!);
print("Entre com a idade da segunda pessoa: ");
n2 = double.parse(stdin.readLineSync()!);

if (n1>n2){
  print("Pessoa: ${aluno1} tem a idade de ${n1}, enquanto ${aluno2} tem a idade de ${n2}, logo a pessoa com maior idade é ${aluno1} com ${n1} anos");
}if(n2>n1){
  print("Pessoa: ${aluno1} tem a idade de ${n1}, enquanto ${aluno2} tem a idade de ${n2}, logo a pessoa com maior idade é ${aluno2} com ${n2} anos");
}else{
  print("Ambas as idades são iguais");
}
}
