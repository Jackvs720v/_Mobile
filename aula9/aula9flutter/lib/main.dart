import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Telaprincipal(),
  ));
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App aula 09 - Campo texto"),
      ),
      body: Campotexto(),
    );
  }
}

//classe do tipo stateFull

class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {
  // armazena o que digitarmos no campo nome do textfield
  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();
  TextEditingController phone = TextEditingController();

  String? _nome = "";
  int? _idade = 0;
  int? _phone = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //cria o widget textfield
        TextField(
          //keyboardType: TextInputType.name,
          keyboardType: TextInputType.text,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          maxLength: 3,
          // keyboardType: TextInputType.phone,

          decoration: InputDecoration(labelText: "Digite o seu nome"),
//Primeira forma: Forma para o usuário digitar o texto e aparecer direto no debug console

          // onChanged: (String texto){
          //   print("Texto digitado pelo usuario ${texto}");

          // },

//Segunda forma: Só aparece no console debug após clicar enter.

          // onSubmitted: (String text) {
          //  print("Texto digitado: ${text}");

          //  },

          //Terceira forma: Só aparece no console debug após clicar em exibir
          controller: nome,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "Digite a sua idade"),
          controller: idade,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "Digite o seu telefone"),
          controller: phone   ,
        ),
        ElevatedButton(
            onPressed: () {
              // nome.text - acessa o conteudo digitado no textfield
              print(
                  "Texto digitado: ${nome.text} e ${idade.text} anos,com o telefone ${phone}");
              setState(() {
                _nome = nome.text;
                _idade = int.tryParse(idade.text);
              });
            },
            child: Text("Exibir")),
        Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Text(
            "${nome.text} - idade: ${idade.text}",
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
