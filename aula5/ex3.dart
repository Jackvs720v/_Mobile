//Exemplo 3 - Classe e Objeto com atributo privado
//27.02.2025

class Pessoa {
  String? _nome; //_ representa elemento privado

  //Cria metodo setnome
  void setNome(String nome){
    _nome = nome;
  }

  String? getNome(){
    return _nome;
  }
}

class Aluno {
  String? nome ;
  getNome(){
    return nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  Aluno aluno = Aluno();
  cliente._nome="Eduardo";
  print("Nome do Cliente : ${cliente._nome}");
  print("Nome do cliente: ${cliente.getNome()}");
  aluno.nome="Seila";
  print("Nome: ${aluno.nome}");
}