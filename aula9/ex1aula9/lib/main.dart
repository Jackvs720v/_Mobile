import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Notas(),
  ));
}

class Notas extends StatefulWidget {
  const Notas({super.key});

  @override
  State<Notas> createState() => _NotasState();
}

class _NotasState extends State<Notas> {
  TextEditingController nome = TextEditingController();
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  TextEditingController n3 = TextEditingController();
  TextEditingController n4 = TextEditingController();
  
  _calculo(){
            res = (nota1+nota2+nota3+nota4)/4;
          }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: TextField(
                  keyboardType: TextInputType.name,
                 decoration: InputDecoration(
                  labelText: "Digite o seu nome",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                 ),
                  controller: nome,
                               ),
               ),
              TextField(
                keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                  labelText: "Digite a sua nota"),
            controller: n1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                  labelText: "Digite a sua nota"),
            controller: n2,
              ),
              TextField(
                keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                  labelText: "Digite a sua nota"),
            controller: n3,
              ),
              TextField(
                keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                  labelText: "Digite a sua nota"),
            controller: n4,
              ),ElevatedButton(onPressed: (){
          // nome.text - acessa o conteudo digitado no textfield
         int? res = 0;
         int? nota1 = 0;
         int? nota2 = 0;
         int? nota3 = 0; //int.tryParse(n2.text)
         int? nota4 = 0;
         String? _nome = "";
          print("Nome: ${nome.text} e as suas notas são = ${nota1}+${nota2}+${nota3}+${nota4} = ${nota1+nota2+nota3+nota4/4}");
          setState(() {
         _nome = nome.text;
         int? nota1 = int.tryParse(n1.text);
         int? nota2 = int.tryParse(n2.text);
         int? nota3 = int.tryParse(n3.text); 
         int? nota4 = int.tryParse(n4.text);
          });
        }, child: Text("Exibir")),
      Container(
       width: 200, height: 200, color:Colors.blue,
       child: Text("Nome: ${nome.text} e as suas notas são = ${nota1}+${nota2}+${nota3}+${nota4} = ${nota1+nota2+nota3+nota4/4}",
       style: TextStyle(fontSize: 20),
       ),
)
              ],
           
           ),
        ),
         );
}
}