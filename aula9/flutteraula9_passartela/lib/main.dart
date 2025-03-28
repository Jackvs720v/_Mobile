import 'package:flutter/material.dart';
import 'package:flutteraula9_passartela/tela2.dart';

void main() {
  runApp(MaterialApp(
  home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();
  _verificarlogin(){
    if(user.text=="Senai" && senha.text =="2025"){
      // Navigator.push permite chamar outra tela do aplicativo
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=>Tela02()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login Incorreto"),
        duration: Duration(seconds: 5),)
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(width: 200,height: 200,color: Colors.grey,
          child: Image.asset('assets/imagens/senai_img.png', fit: BoxFit.cover,),),
           SizedBox(
            width: 250,
            height: 250,
            child: Column(
              children: [
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: TextField(
                  keyboardType: TextInputType.name,
                 decoration: InputDecoration(
                  labelText: "Digite seu usuario",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                 ),
                  controller: user,
                               ),
               ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Digite sua senha",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                ),
                obscureText: true, // parametro para ocultar o que o usuario esta digitando
                obscuringCharacter: '*', // caractere que sera utilizado
                controller: senha,
              ),
              ],
            ),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _verificarlogin, child: Text("Login")),
                 ElevatedButton(onPressed: (){
              setState(() {
                user.text = "";
                senha.text = "";
              });
              
            }, child: Text("Limpar"))
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}