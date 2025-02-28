//Exemplo 6 - Herença e Construtor
//27.02.2025

class Animal{
  //Atributos
  String? nome;
  int? idade;
  //Construtor
  Animal(this.nome,this.idade);

  void dormir(){
    print("O animal está dormindo");
  }
}

class Cachorro extends Animal{
  Cachorro(nome,idade): super(nome,idade);
  void latir(){
    print("O animal ${nome} está latindo");
  }
}

class Tigre extends Animal{
  //Atributo
  String? cor;
  //Construtor
  Tigre(nome,idade,this.cor):super(nome,idade);
  void atacar(){
      print("O animal Tigre $nome atacou");
    }
}

void main(){
Cachorro cachorro = Cachorro("Balboa",5);
Tigre tigre = Tigre("Memphis",30,"Atacante");

cachorro.latir();
cachorro.dormir();

tigre.atacar();

}