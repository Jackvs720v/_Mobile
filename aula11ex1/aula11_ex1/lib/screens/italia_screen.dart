import 'package:flutter/material.dart';
import 'brasil_screen.dart'; // reutiliza FoodScreen

class ItaliaScreen extends StatelessWidget {
  const ItaliaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FoodScreen(
      country: 'Itália',
      dish: 'Pizza',
      imagePath: 'assets/pizza.jpeg',
      description:
          'A pizza italiana, como a Margherita, é famosa mundialmente por sua massa fina, molho de tomate e queijo mozzarella.',
    );
  }
}
