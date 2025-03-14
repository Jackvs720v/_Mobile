import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //MaterialApp Responsavel pela construção da tela

    return MaterialApp(
      home: Scaffold(
        //Barra do app
        appBar: AppBar(title: Text("App Aula 07"), backgroundColor: Colors.blue,),
        backgroundColor: Colors.white,
        body: Column(
          //Alinhamento primario
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //Alinhamento secundario
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 80,height: 80,color: Colors.amber,),
                Container(width: 80,height: 80,color: Colors.orange,),
                Container(width: 80,height: 80,color: Colors.red,),
              ],

            ),
           
            Stack( //Empilhar conteiners
            
              children: [
                Container(width: 400,height: 100,color: Colors.blue,
                child: Text("Senai",
                style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),),
                Container(width: 80,height: 100,color: Colors.red,),
                 

              ],
            ),

             Stack(
              
              children: [
                Container(width: 400,height: 100,color: Colors.blue,
                child: Text("Mobile 1",
                style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),),
                Container(width: 80,height: 100,color: Colors.red,),
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}
