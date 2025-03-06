
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
//polimorfismo
@override
  void ligarF(){
    print("Fritadeira ligada");
  }
  void desligarF(){
    print("Fritadeira Desligada");
  }
  void temperatura(double temperatura){
    int setpoint = 250;
    if(temperatura>=setpoint){
      print("Temperatura OK");
    }else{
       while(temperatura<setpoint){
      temperatura = temperatura+10;
      print("Temperatura ajuste ${temperatura}");
    }
    print("Temperatura da Fritadeira ajustada em 250 oC");
  }}
    }

class ArCondicionado extends Produtos{

  ArCondicionado(nome,quantidade,preco,tpComunicacao,energia):super(nome,quantidade,preco,tpComunicacao,energia);
//polimorfismo
@override
  void ligarA(){
    print("Ar condicionado ligado");
  }
  void desligarA(){
    print("Ar condicionado Desligado");
  }
  void temperatura(double temperatura){
    int setpoint = 22;
    if(temperatura>=setpoint){
      print("Temperatura OK");
    }else{
       while(temperatura<setpoint){
      temperatura = temperatura+2;
      print("Temperatura ajuste ${temperatura}");
    }
    print("Temperatura do ar condicionado ajustada");
  }}
}

class Televisao extends Produtos{
  Televisao(nome,quantidade,preco,tpComunicacao,energia):super(nome,quantidade,preco,tpComunicacao,energia);
//polimorfismo
@override
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
  fritadeira.temperatura(210.0);
  fritadeira.desligarF();

  // Utilizando os métodos do Ar Condicionado
  arCondicionado.ligarA();
  arCondicionado.temperatura(10.0);
  arCondicionado.desligarA();

  // Utilizando os métodos da Televisão
  televisao.ligarT();
  televisao.temperaturaT(19.0);
  televisao.desligarT();
}