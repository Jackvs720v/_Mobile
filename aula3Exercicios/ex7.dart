import 'dart:io';

void main(){
String  modelo1, modelo2, modelo3;
double n1,n2,n3;
print("Entre com o primeiro modelo de carro: ");
modelo1 = stdin.readLineSync();
print("Entre com o segundo modelo de carro: ");
modelo2 = stdin.readLineSync();
print("Entre com o terceiro modelo de carro: ");
modelo3 = stdin.readLineSync();
print("Entre com o valor do primeiro carro: ");
n1 = double.parse(stdin.readLineSync()!);
print("Entre com o valor do segundo carro: ");
n2 = double.parse(stdin.readLineSync()!);
print("Entre com o valor do terceiro carro: ");
n3 = double.parse(stdin.readLineSync()!);

if (n1>n2&&n2<n3){
  print("Modelo 1 é mais caro");
  print("Modelo 3 é mais barato");
}if (n2>n3&&n3<n1){
  print("Modelo 2 é mais caro");
  print("Modelo 1 é mais barato");
}if (n3>n1&&n1<n2){
  print("Modelo 3 é mais caro");
  print("Modelo 2 é mais barato");
}else{
  print("Os modelos tem o mesmo valor");
}
}
