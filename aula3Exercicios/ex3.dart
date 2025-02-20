import 'dart:io';
 
void main(){
    double slB, desconto, bonificacao;
    slB = double.parse(stdin.readLineSync()!);
    desconto = double.parse(stdin.readLineSync()!);
    bonificacao = double.parse(stdin.readLineSync()!);
 
  salarioLiquido(slB,desconto, bonificacao);
 
}
 
void salarioLiquido(slB,desconto,bonificacao){
    double slL;
    slL = slB - (desconto+bonificacao);
    print("O salário liquido é de $slL");
}