import 'package:flutter/material.dart';

void main() {
  runApp(const AtividadeApp());
}

class AtividadeApp extends StatefulWidget {
  const AtividadeApp({super.key});

  @override
  State<AtividadeApp> createState() => _AtividadeAppState();
}

class _AtividadeAppState extends State<AtividadeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}



