
class Animal{
  //Atributos
  String? nome;
  int? idade;
  String? cor;
  String? raca;

  //Construtor
  Animal(this.nome,this.idade, this.cor, this.raca);

  void dormir(){
    print("O animal está dormindo");
  }
}

class Cachorro extends Animal{
  Cachorro(nome,idade,cor,raca): super(nome,idade,cor,raca);
  void latir(){
    print("O animal ${nome} está latindo");
  }
}

class Tigre extends Animal{
  //Construtor
  Tigre(nome,idade,cor,raca):super(nome,idade,cor,raca);
  void atacar(){
      print("O animal Tigre $nome atacou");
    }
}

void main(){
Cachorro cachorro = Cachorro("Balboa",5,"Pardo","pitbull");
Tigre tigre = Tigre("Memphis",30,"Atacante","Corinthias");

cachorro.latir();
cachorro.dormir();

tigre.atacar();

}