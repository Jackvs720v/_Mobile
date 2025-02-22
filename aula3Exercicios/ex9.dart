import "dart:io";

void main(){
    double kwh, res;
    var op;
    print("Entre com a quantidade em kwh: ");
    kwh = parse.double(stdin.readLineSync()!);
    print("Qual o tipo de instalação? R - Resiência, I - Indústria ou C - Comércio");
    
    switch (op){
        case "R" || "Resiência":
        if(kwh<=500){
            res = kwh*0.50;
            print("O valor a pagar é de ${res}");
        }else if(kwh>500){
            res = kwh*0.70;
            print("O valor a pagar é de ${res}");
        }
        break
        case "C" || "Comércio":
        if(kwh<=1000){
            res = kwh*0.65;
            print("O valor a pagar é de ${res}");
        }else if(kwh>1000){
            res = kwh*0.60;
            print("O valor a pagar é de ${res}");
        }
        break
            case "I" || "Indústria":
        if(kwh<=5000){
            res = kwh*0.55;
            print("O valor a pagar é de ${res}");
        }else if(kwh>5000){
            res = kwh*0.50;
            print("O valor a pagar é de ${res}");
        }
        break
    }
    
}