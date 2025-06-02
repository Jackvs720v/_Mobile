import 'package:aula11_ex2/screen/userDetailsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coleta de Informações',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const UserFormPage(),
    );
  }
}

class UserFormPage extends StatefulWidget {
  const UserFormPage({super.key});

  @override
  State<UserFormPage> createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  final _formKey = GlobalKey<FormState>();

  String nome = '';
  String idade = '';
  String profissao = '';
  String sexo = 'Masculino';
  String estadoCivil = 'Solteiro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de Usuário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (value) =>
                    value!.isEmpty ? 'Informe o nome' : null,
                onSaved: (value) => nome = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Idade'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.isEmpty ? 'Informe a idade' : null,
                onSaved: (value) => idade = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Profissão'),
                validator: (value) =>
                    value!.isEmpty ? 'Informe a profissão' : null,
                onSaved: (value) => profissao = value!,
              ),
              const SizedBox(height: 16),
              const Text('Sexo:', style: TextStyle(fontWeight: FontWeight.bold)),
              ListTile(
                title: const Text('Masculino'),
                leading: Radio<String>(
                  value: 'Masculino',
                  groupValue: sexo,
                  onChanged: (value) {
                    setState(() {
                      sexo = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Feminino'),
                leading: Radio<String>(
                  value: 'Feminino',
                  groupValue: sexo,
                  onChanged: (value) {
                    setState(() {
                      sexo = value!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 16),
              const Text('Estado Civil:', style: TextStyle(fontWeight: FontWeight.bold)),
              ...['Solteiro', 'Casado', 'Divorciado', 'Viúvo'].map((estado) {
                return ListTile(
                  title: Text(estado),
                  leading: Radio<String>(
                    value: estado,
                    groupValue: estadoCivil,
                    onChanged: (value) {
                      setState(() {
                        estadoCivil = value!;
                      });
                    },
                  ),
                );
              }),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailsPage(
                          nome: nome,
                          idade: idade,
                          profissao: profissao,
                          sexo: sexo,
                          estadoCivil: estadoCivil,
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Concluir'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
