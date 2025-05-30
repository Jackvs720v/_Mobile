import 'package:flutter/material.dart';

void main() {
  runApp(TelaApp());
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App aula 08 - Multi child layout"),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String msg = "Mobile";
  int _counter = 0;

  void _exibemsg() {
    setState(() {
      msg = "Mobile 1";
    });
  }

  void _limpar() {
    setState(() {
      msg = '';
    });
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 50),
            Icon(Icons.favorite, color: Colors.red, size: 50),
            Icon(Icons.thumb_up, color: Colors.blue, size: 50),
          ],
        ),
        SizedBox(height: 20),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blueAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
              child: Center(
                child: Text(
                  msg,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person_2_rounded),
                title: Text("Usuario 1"),
                subtitle: Text("Descriçao do usuario 1"),
              ),
              ListTile(
                leading: Icon(Icons.person_add_alt_1_sharp),
                title: Text("Usuario 2"),
                subtitle: Text("Descriçao do usuario 2"),
              ),
            ],
          ),
        ),
        ElevatedButton(onPressed: _exibemsg, child: Text("Mensagem")),
        ElevatedButton(onPressed: _limpar, child: Text("Limpar")),
        SizedBox(height: 10),
        Text('Contador: $_counter', style: TextStyle(fontSize: 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _increment, child: Text("+")),
            SizedBox(width: 10),
            ElevatedButton(onPressed: _decrement, child: Text("-")),
            SizedBox(width: 10),
            ElevatedButton(onPressed: _resetCounter, child: Text("Zerar")),
          ],
        ),
      ],
    );
  }
}
