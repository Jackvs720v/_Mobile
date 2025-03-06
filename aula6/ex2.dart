//Exemplo 2 de Polimorfismo
//06.03.2025

class Animal{
  void fazerSom(){
    print("O animal faz um som");
  }
  }

class Cachorro extends Animal{
  
  //Polimorfismo
  @override
  void fazerSom(){
    print("O Cachorro late Au AU");
  }
}

class Gato extends Animal{
  //Polimorfismo
  @override
  void fazerSom() {
    print("O gato Mia");
  }
}

void main(){
  Animal meuAnimal = Cachorro();
  meuAnimal.fazerSom();

  Animal meuAnimal1 = Gato();
  meuAnimal1.fazerSom();

  

}