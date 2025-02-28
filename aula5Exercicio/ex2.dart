
class Animal{
  //Atributos
  String? nome;
  int? idade;
  String? cor;
  //Construtor
  Animal(this.nome,this.idade, this.cor);
 
}

class TipoAnimal extends Animal{
String? tpAnimal;
double peso;

TipoAnimal(nome,idade,cor,this.peso,this.tpAnimal):super(nome,idade,cor);
void acordou(){
  print("$nome Acordou");
}
void dormiu(){
  print("O Animal está dormindo");
  }
void animal(){
  print("$nome é um $tpAnimal");
}
}



void main(){
  TipoAnimal tpAnimal = TipoAnimal("Anderson",15, "azul", 140.0,"Passaro");
  tpAnimal.acordou();
  tpAnimal.dormiu();
  tpAnimal.animal();

}