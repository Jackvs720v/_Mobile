//cria classe abstrata
abstract class Alimento{
  void separarIgredientes();
  void pegarTigela();
  void prepararComida();
}

class Filha implements Alimento{
  @override
  void separarIgredientes(){
    print("Igredientes separados");
  }

  @override
  void pegarTigela(){
    print("Tigela pega");
  }

  @override
  void prepararComida(){
    print("Comida preparada");
  }
}

void main(){
  Filha Jacare = Filha();
  Jacare.separarIgredientes();
  Jacare.pegarTigela();
  Jacare.prepararComida();

}