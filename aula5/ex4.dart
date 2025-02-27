//Exemplo 4 - Class e objeto com this
//27.02.2025

class Usuario {
  String? usuario;
  String? senha;

  //Metodo de autenticação
  void autentica() {
    String usuario = "senai";
    String senha = "senai@2025";
    if(this.usuario==usuario && this.senha == senha){
      print("Login Correto Usuário:${usuario},\n Senha:${senha}");
    }else{
      print("Login Incorreto Usuário:${usuario},\n Senha:${senha}");
    }
  }
}

void main(){
  Usuario usuario = Usuario();
  usuario.usuario = "senai";
  usuario.senha = "senai@2025";
  usuario.autentica();
}