import 'dart:io';

void main(){
double res,n1;
var op;
print("Digite o valor que deseja converter: ");
n1 = double.parse(stdin.readLineSync()!);
print("Qual conversão você deseja fazer com o valor digitado? \n Euro \n Dólar \n Franco Suiço");
op = stdin.readLineSync();
switch (op) {
  case "Euro"||"euro":
    res = 7*n1;
    print("Convertido o valor fica ${res}");
    break;
  case "Dólar"||"dólar"||"dolar"||"Dolar":
    res = 6.56*n1;
    print("Convertido o valor fica ${res}");
    break;
  case "Franco Suiço" || "franco suiço" || "Franco suiço" || "franco Suiço":
    res = 4.35*n1;
    print("Convertido o valor fica ${res}");
    break;
    

  default: print("Operação Inválida");
}

}