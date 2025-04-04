import 'package:flutter/material.dart';

class Valor{
  final String value;
 

  Valor({
   required this.value
  });
}

void main() {
  runApp(MaterialApp(
    home: telaPrincipal(),
  ));
}

class telaPrincipal extends StatelessWidget {
  const telaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      // atribuindo cor ao appbar
    backgroundColor: Colors.green,
    elevation: 5,
    iconTheme: IconThemeData(color: Colors.grey),
    // centraliza o titulo do aplicativo
    centerTitle: true,
    title: Row(
      children: [
        Padding(padding: EdgeInsets.all(12),
        child: Text('Monitor de Sensores',
        style: TextStyle(fontSize:20,
        fontWeight: FontWeight.w800,
        color: Colors.white ),),
        ),

        Spacer(),
        // permite colocar a foto do usuario logado por exemplo
        CircleAvatar(
          backgroundColor: Colors.green[100],
          child: Icon(Icons.person,color: Colors.green,),
        ),
        
      ],
      
    ),

    ),
// corpo do Scaffold
    body: Column(
      children: [
        
        SizedBox(height: 130,),

        // Cria botoes em Card
       _DashboardButton(
        icon: Icons.thermostat_rounded, 
        label: 'Temperatura do Ar', 
        valor: "0.0 °C",
        onTap: (){}),

        SizedBox(height: 10,),
         _DashboardButton(
        icon: Icons.thermostat_rounded, 
        label: 'Umidade do Ar', 
        valor: "0.0 °C",
        onTap: (){
          //Navigator.push(context,
         //  MaterialPageRoute(builder: (context)=>Telaacionamento()));
        }),

        SizedBox(height: 10,),
         _DashboardButton(
        icon: Icons.thermostat_rounded ,
        label: 'Temperatura do Solo', 
        valor: "0.0 °C",
        onTap: (){}),
       
        SizedBox(height: 10,),
         _DashboardButton(
        icon: Icons.thermostat_rounded ,
        label: 'Umidade do Solo', 
        valor: "0.0 °C",
        onTap: (){}),

       
      ],

    ),

    
    );
    
  }
}

class _DashboardButton extends StatelessWidget {
  

  // Criando atributos para a classe

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final String valor;

  // Criando construtor com passagem de parametros obrigatorios

  const _DashboardButton({required this.icon,
  required this.label, 
  required this.valor, 
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    //  novo widget que permite tocar na tela
    return InkWell(
     onTap: onTap,
     child: Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical:20,horizontal: 10),
        child: Row(
          children: [
            Icon(
              icon,color: Colors.green,size: 20,
            ),
            SizedBox(width: 16,),
            Text(label,style: TextStyle(
              fontSize: 18,color: Colors.black
            ),),
            
            Text(valor,style: TextStyle(
              fontSize: 18,color: Colors.black, 
            ),)
          ],
        ),
        ),
      
     ),
    );
  }
}