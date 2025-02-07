import 'dart:io';

void main(){

//Escreve mensagem no terminal perguntado o nome
print("Digite seu nome: ");
String nome = stdin.readLineSync()!;
print("Prazer $nome");
//Escreve mensagem no terminal perguntado a idade
print("Digite a sua idade: ");
String idadestring = stdin.readLineSync()!;
print("Idade $idadestring");


}