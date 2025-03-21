import 'package:flutter/material.dart';

void main() {
  runApp(//Desingn para android
  MaterialApp(
      // retira a faixa modo debug do aplicativo
      debugShowCheckedModeBanner: false,
    home: Home(),
  )
  );
}
//Cria uma classe do tipo Stateless chamada Home
class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //Scaffold layout semipronto do app
    return Scaffold(
      appBar: 
      AppBar(
        title: Text("App Aula 8"),
        //backgroundColor altera a cor do aplicativo app bar
        backgroundColor: Colors.blue,
        actions: [
          //add um icone no AppBar
           IconButton(onPressed: (){
            print("Busca acionada");

          }, icon: Icon(Icons.search)),
         IconButton(onPressed: (){
          print("Mais opçoes acionadas");
         }, icon: Icon(Icons.more_vert)),
        ],

      ),
      // corpo do Widget Scaffold
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 200,height: 200,color: Colors.blue,
            
            child: Text("Aplicativo ",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),),
            Text("Conteudo principal do aplicativo",style: TextStyle(fontSize: 20),),
          ],
        )
      ),
    
    );
  }
}
