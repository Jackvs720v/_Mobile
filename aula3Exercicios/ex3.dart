import 'dart:io';
 
void main(){
    double slB, desconto, bonificacao;
    print("Qual o salário Bruto? ");
    slB = double.parse(stdin.readLineSync()!);
    print("Qual o Desconto? ");
    desconto = double.parse(stdin.readLineSync()!);
    print("Qual a bonificação? ");
    bonificacao = double.parse(stdin.readLineSync()!);
 
  salarioLiquido(slB,desconto, bonificacao);
 
}
 
void salarioLiquido(slB,desconto,bonificacao){
    double slL;
    slL = slB - (desconto+bonificacao);
    print("O salário liquido é de $slL");
}