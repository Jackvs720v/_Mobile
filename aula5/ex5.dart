//Exemplo 5 - Herença

class Animal{
  String? nome;
  int? idade;
  void dormir(){
    print("O animal está dormindo");
  }
}

class Cachorro extends Animal{
  void latir(){
    print("O animal ${nome} está latindo");
  }
}

class Tigre extends Animal{
    String? cor;
    void atacar(){
      print("O animal Tigre $nome atacou");
    }
}

void main(){
Cachorro cachorro = Cachorro();
Tigre tigre = Tigre();

cachorro.nome = "Balboa";
cachorro.idade = 5;
cachorro.latir();
cachorro.dormir();

tigre.nome = "Memphis";
tigre.idade = 30;
tigre.cor = "Atacante";
tigre.atacar();

}