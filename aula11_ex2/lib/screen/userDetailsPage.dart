import 'package:flutter/material.dart';

class UserDetailsPage extends StatelessWidget {
  final String nome;
  final String idade;
  final String profissao;
  final String sexo;
  final String estadoCivil;

  const UserDetailsPage({
    super.key,
    required this.nome,
    required this.idade,
    required this.profissao,
    required this.sexo,
    required this.estadoCivil,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dados do Usuário')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Nome: $nome', style: const TextStyle(fontSize: 18)),
            Text('Idade: $idade', style: const TextStyle(fontSize: 18)),
            Text('Profissão: $profissao', style: const TextStyle(fontSize: 18)),
            Text('Sexo: $sexo', style: const TextStyle(fontSize: 18)),
            Text('Estado Civil: $estadoCivil', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
