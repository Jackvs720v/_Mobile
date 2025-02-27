//Exemplo 2 - Classe e objeto
//27.02

class Carro {
  String marca ="Nissan";
  int ano = 2025;

  //Cria metodo abrir porta
  void abrirPorta(int qtde_p){
    if(qtde_p==1){
      print("Porta do motorista aberta");
    }else if(qtde_p==2){
      print("Porta do motorista e do passageiro aberta");
    }else if(qtde_p==3){
      print("Porta do motorista, do passageiro aberta e traseira direita aberta");
    }else {
      print("Porta do motorista, do passageiro aberta, traseira direita e traseira esquerda aberta. Todas as portas estão abertas");
    }
  }
  void fecharPorta(int qtde_p){
    if(qtde_p==1){
      print("Porta do motorista fechada");
    }else if(qtde_p==2){
      print("Porta do motorista e do passageiro fechada");
    }else if(qtde_p==3){
      print("Porta do motorista, do passageiro aberta e traseira direita fechada");
    }else {
      print("Porta do motorista, do passageiro aberta, traseira direita e traseira esquerda fechada. Todas as portas estão fechadas");
    }
  }
  void ligarCarro (){
    print("Carro ligado");
  }
    void desligarCarro (){
    print("Carro Desligado");
  }
}

void main(){
Carro carro = Carro();
carro.ano = 2022;
carro.marca = "Niisan Tiida";
carro.ligarCarro();
carro.desligarCarro();
print("Exibe infos do carro");
print("${carro.marca}");
print("${carro.ano}");
carro.abrirPorta(2);
carro.fecharPorta(2);
}