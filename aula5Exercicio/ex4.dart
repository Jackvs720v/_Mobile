
class Produtos {
  String nome;
  int quantidade;
  double preco;
  String tpComunicacao;
  double energia;

  Produtos(this.nome,this.quantidade,this.preco,this.tpComunicacao,this.energia);
}

class Fritadeira extends Produtos{

  Fritadeira(nome,quantidade,preco,tpComunicacao,energia):super(nome,quantidade,preco,tpComunicacao,energia);

  void ligarF(){
    print("Fritadeira ligada");
  }
  void desligarF(){
    print("Fritadeira Desligada");
  }
  void temperatura(double temperatura){
    temperatura = 32.0;
    print("A temperatura atual é de $temperatura ");
  }
}

class ArCondicionado extends Produtos{

  ArCondicionado(nome,quantidade,preco,tpComunicacao,energia):super(nome,quantidade,preco,tpComunicacao,energia);

  void ligarA(){
    print("Ar condicionado ligado");
  }
  void desligarA(){
    print("Ar condicionado Desligado");
  }
  void temperaturaA(double temperatura){
    temperatura = 19.0;
    print("A temperatura atual é de $temperatura ");
  }
}

class Televisao extends Produtos{
  Televisao(nome,quantidade,preco,tpComunicacao,energia):super(nome,quantidade,preco,tpComunicacao,energia);

  void ligarT(){
    print("Televisão Ligado");
  }
  void desligarT(){
    print("Televisão Desligado");
  }
  void temperaturaT(double temperatura){
    temperatura = 19.0;
    print("A temperatura atual é de $temperatura ");
  }
}

void main() {
  // Criando instâncias dos produtos
  Fritadeira fritadeira = Fritadeira("Fritadeira Elétrica", 5, 300.0, "Sem fio", 1500.0);
  ArCondicionado arCondicionado = ArCondicionado("Ar Condicionado Split", 2, 2000.0, "Wi-Fi", 1200.0);
  Televisao televisao = Televisao("TV LED 55''", 10, 2500.0, "HDMI", 150.0);

  // Utilizando os métodos da Fritadeira
  fritadeira.ligarF();
  fritadeira.temperatura(32.0);
  fritadeira.desligarF();

  // Utilizando os métodos do Ar Condicionado
  arCondicionado.ligarA();
  arCondicionado.temperaturaA(19.0);
  arCondicionado.desligarA();

  // Utilizando os métodos da Televisão
  televisao.ligarT();
  televisao.temperaturaT(19.0);
  televisao.desligarT();
}