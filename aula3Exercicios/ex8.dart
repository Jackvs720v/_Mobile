import 'dart:io';

void main(){
String tp, modelo2, modelo3;
double litros,des,valT;
var op;
print("Entre com a quantidade em litros: ");
litros = stdin.readLineSync()!;
print("Qual o tipo de combustível? E=Etanol,G=Gasolina, D=Diesel ");
op = stdin.readLineSync()!;
print("Entre com o terceiro modelo de carro: ");
modelo3 = stdin.readLineSync()!;
print("Entre com o valor do primeiro carro: ");
litros = double.parse(stdin.readLineSync()!);
print("Entre com o valor do segundo carro: ");
n2 = double.parse(stdin.readLineSync()!);
print("Entre com o valor do terceiro carro: ");
n3 = double.parse(stdin.readLineSync()!);

switch(op)
{
    case "Etanol"|| "E":
    if(litros>=15){
    des = 1.70*litros*0.04;
    valT = (1.70*litros)-des;
    print("O Valor total foi de ${valT} reais com um desconto de ${des}");
    }
    else if(litros<15){
    des = 1.70*litros*0.03;
    valT = (1.70*litros)-des;
    print("O Valor total foi de ${valT} reais com um desconto de ${des}");
    }
    break

    case "Gasolina"|| "G":
    if(litros>=20){
    des = 4.50*litros*0.03;
    valT = (4.50*litros)-des;
    print("O Valor total foi de ${valT} reais com um desconto de ${des}");
    }
    else if(litros<20){
    valT = 1.70*litros;
    print("O Valor total foi de ${valT} reais sem desconto");
    }
    break

    case "Disel"|| "D":
    if(litros>=15){
    des = 2.00*litros*0.05;
    valT = (2.00*litros)-des;
    print("O Valor total foi de ${valT} reais com um desconto de ${des}");
    }
    else if(litros<15){
    des = 2.00*litros*0.03;
    valT = (2.00*litros)-des;
    print("O Valor total foi de ${valT} reais com um desconto de ${des}");
    }
    break

    default: print("Erro na operação");
    break
}
}