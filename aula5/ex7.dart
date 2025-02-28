//Exemplo 7 - Construtor
//27.02.2025

class Fruta{
  String sabor;
  String nome;
  String cor;
  double peso;
  int diasDesdecolheita;
  bool isMadura = false;

  //Cria construtor

  Fruta(this.sabor,this.nome,this.cor,this.peso, this.diasDesdecolheita);

    void verificarMaturidade(int diasParaMadura){
      if (diasDesdecolheita>=diasParaMadura){
        print("A $nome está madura");
        isMadura = true;
      }
      else{
        print("A fruta não está madura");
        isMadura = false;
      }
    }

}

void main(){
  Fruta fruta = Fruta("Doce", "Manga", "Amarela", 1.2, 5);
  fruta.verificarMaturidade(6);

}