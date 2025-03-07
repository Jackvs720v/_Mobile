//Exemplo 4 - Abstração
//06.03.2025

//Interface ou contrato
abstract class Forma{
  double calcularArea();
}

//Classse que implementa a interface
//Abstração usa o implements
class Circulo implements Forma{
  double raio;
  Circulo(this.raio);

  @override
  double calcularArea() {
    return 3.14*raio*raio;
  }
}

class Retangulo implements Forma{
  double largura, altura;
  Retangulo(this.largura,this.altura);

  @override
  double calcularArea() {
    return largura*altura;
  }
}

void main(){
  Forma forma1 = Circulo(5);
  Forma forma2 = Retangulo(4, 6);

  print("Área do Circulo: ${forma1.calcularArea()}");
  print("Área do Retangulo: ${forma2.calcularArea()}");
}