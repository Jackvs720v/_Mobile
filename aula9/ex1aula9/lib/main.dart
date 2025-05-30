
//-----------------Ex 1--------------------------
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: Notas(),
//   ));
// }

// class Notas extends StatefulWidget {
//   const Notas({super.key});

//   @override
//   State<Notas> createState() => _NotasState();
// }

// class _NotasState extends State<Notas> {
//   TextEditingController nome = TextEditingController();
//   TextEditingController n1 = TextEditingController();
//   TextEditingController n2 = TextEditingController();
//   TextEditingController n3 = TextEditingController();
//   TextEditingController n4 = TextEditingController();

//   String resultado = "";
//   double media = 0.0;

//   void calcularMedia() {
//     double? nota1 = double.tryParse(n1.text);
//     double? nota2 = double.tryParse(n2.text);
//     double? nota3 = double.tryParse(n3.text);
//     double? nota4 = double.tryParse(n4.text);

//     if (nota1 != null && nota2 != null && nota3 != null && nota4 != null) {
//       setState(() {
//         media = (nota1 + nota2 + nota3 + nota4) / 4;
//         resultado = "Aluno: ${nome.text}\nMédia: ${media.toStringAsFixed(2)}\n" +
//             (media >= 6.0 ? "Situação: Aprovado" : "Situação: Reprovado");
//       });
//     } else {
//       setState(() {
//         resultado = "Por favor, insira todas as notas corretamente.";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Notas do Aluno")),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: nome,
//               decoration: const InputDecoration(labelText: "Nome do Aluno"),
//             ),
//             TextField(
//               controller: n1,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(labelText: "Nota 1"),
//             ),
//             TextField(
//               controller: n2,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(labelText: "Nota 2"),
//             ),
//             TextField(
//               controller: n3,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(labelText: "Nota 3"),
//             ),
//             TextField(
//               controller: n4,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(labelText: "Nota 4"),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: calcularMedia,
//               child: const Text("Calcular"),
//             ),
//             const SizedBox(height: 20),
//             Text(resultado, style: const TextStyle(fontSize: 18)),
//           ],
//         ),
//       ),
//     );
//   }
// }

//-----------------Ex 2--------------------------

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: DadosPessoais(),
//   ));
// }

// class DadosPessoais extends StatefulWidget {
//   const DadosPessoais({super.key});

//   @override
//   State<DadosPessoais> createState() => _DadosPessoaisState();
// }

// class _DadosPessoaisState extends State<DadosPessoais> {
//   TextEditingController nome = TextEditingController();
//   TextEditingController idade = TextEditingController();
//   TextEditingController endereco = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController telefone = TextEditingController();

//   String resultado = "";

//   void exibirDados() {
//     setState(() {
//       resultado =
//           "Nome: ${nome.text}\nIdade: ${idade.text}\nEndereço: ${endereco.text}\nEmail: ${email.text}\nTelefone: ${telefone.text}";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Cadastro de Dados Pessoais")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               TextField(controller: nome, decoration: const InputDecoration(labelText: "Nome")),
//               TextField(controller: idade, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: "Idade")),
//               TextField(controller: endereco, decoration: const InputDecoration(labelText: "Endereço")),
//               TextField(controller: email, decoration: const InputDecoration(labelText: "Email")),
//               TextField(controller: telefone, keyboardType: TextInputType.phone, decoration: const InputDecoration(labelText: "Telefone")),
//               const SizedBox(height: 20),
//               ElevatedButton(onPressed: exibirDados, child: const Text("Exibir Dados")),
//               const SizedBox(height: 20),
//               Text(resultado, style: const TextStyle(fontSize: 18)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//-----------------Ex 3--------------------------
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Jogadores(),
  ));
}

class Jogadores extends StatefulWidget {
  const Jogadores({super.key});

  @override
  State<Jogadores> createState() => _JogadoresState();
}

class _JogadoresState extends State<Jogadores> {
  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();
  TextEditingController pontos = TextEditingController();

  List<Map<String, dynamic>> jogadores = [];

  void adicionarJogador() {
    setState(() {
      jogadores.add({
        "nome": nome.text,
        "idade": int.tryParse(idade.text) ?? 0,
        "pontos": int.tryParse(pontos.text) ?? 0,
      });

      // Limpar os campos
      nome.clear();
      idade.clear();
      pontos.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro de Jogadores")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nome, decoration: const InputDecoration(labelText: "Nome do jogador")),
            TextField(controller: idade, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: "Idade")),
            TextField(controller: pontos, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: "Pontos/Gols")),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: adicionarJogador, child: const Text("Adicionar")),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: jogadores.length,
                itemBuilder: (context, index) {
                  final jogador = jogadores[index];
                  return Card(
                    child: ListTile(
                      title: Text(jogador['nome']),
                      subtitle: Text("Idade: ${jogador['idade']} | Pontos: ${jogador['pontos']}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
