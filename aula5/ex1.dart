//Exemplo 1 - Programação Orientada a Objeto

//Cria a classe chamada casa
class Casa{
//String cor cria o atributo cor da casa

String? cor;
int? qtde_p;

//Cria o metodo abrir porta

void abrirPorta(){
  print("A porta está aberta");
}

}

void main(){
Casa minhaCasa = Casa();
minhaCasa.cor = "Azul";
minhaCasa.qtde_p = 2;
minhaCasa.abrirPorta();
print("Cor da casa ${minhaCasa.cor}");
print("Quantidade de portas ${minhaCasa.qtde_p}");

}