import 'dart:io';

void main(){
String  modelo1, modelo2, modelo3;
double n1,n2,n3;
print("Entre com o primeiro modelo de carro: ");
modelo1 = stdin.readLineSync()!;
print("Entre com o segundo modelo de carro: ");
modelo2 = stdin.readLineSync()!;
print("Entre com o terceiro modelo de carro: ");
modelo3 = stdin.readLineSync()!;
print("Entre com o valor do primeiro carro: ");
n1 = double.parse(stdin.readLineSync()!);
print("Entre com o valor do segundo carro: ");
n2 = double.parse(stdin.readLineSync()!);
print("Entre com o valor do terceiro carro: ");
n3 = double.parse(stdin.readLineSync()!);

  if (n1 == n2 && n2 == n3) {
    print("Os modelos têm o mesmo valor.");
  } else {
    // Determina o mais caro
    double maisCaro = n1;
    String modeloMaisCaro = modelo1;
    if (n2 > maisCaro) {
      maisCaro = n2;
      modeloMaisCaro = modelo2;
    }
    if (n3 > maisCaro) {
      maisCaro = n3;
      modeloMaisCaro = modelo3;
    }

    // Determina o mais barato
    double maisBarato = n1;
    String modeloMaisBarato = modelo1;
    if (n2 < maisBarato) {
      maisBarato = n2;
      modeloMaisBarato = modelo2;
    }
    if (n3 < maisBarato) {
      maisBarato = n3;
      modeloMaisBarato = modelo3;
    }

    print("$modeloMaisCaro é o mais caro.");
    print("$modeloMaisBarato é o mais barato.");
  }
}
