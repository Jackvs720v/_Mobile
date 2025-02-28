
class Maquinas {
  String nomeM;
  int quanEixos;
  int rotacao;
  double energia;

  Maquinas(this.nomeM,this.quanEixos,this.rotacao,this.energia);

  void ligado(){
    print("Máquina ligada");
  }
}

class Furadeira extends Maquinas{
  Furadeira(nomeM,quanEixos,rotacao,energia):super(nomeM,quanEixos,rotacao,energia);
   void infoFuradeira() {
    print("Nome: $nomeM");
    print("Rotação: $rotacao RPM");
    print("Consumo de energia: $energia W");
  }
}

void main(){
  Furadeira furadeira = Furadeira("FuradeiraPadrao", 0 ,1999, 423.2);
  furadeira.infoFuradeira();
}