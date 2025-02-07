import 'dart:io';

void main(){
//Soma
print("Digite o Número n1 para somar: ");
int n1 = int.parse(stdin.readLineSync()!); //stdin.readLineSync() vem dado como string por padrão

print("Digite o Número n2 para somar: ");
int n2 = int.parse(stdin.readLineSync()!);

int res = n1+n2;
print("Resultado: $res");

//Subtração
print("Digite o Número n1 para subtrair: ");
int n3 = int.parse(stdin.readLineSync()!); //stdin.readLineSync() vem dado como string por padrão

print("Digite o Número n2 para subtrair: ");
int n4 = int.parse(stdin.readLineSync()!);

int resSub = n3-n4;
print("Resultado: $resSub");
}