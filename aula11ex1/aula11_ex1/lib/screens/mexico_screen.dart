import 'package:flutter/material.dart';
import 'brasil_screen.dart'; // reutiliza FoodScreen

class MexicoScreen extends StatelessWidget {
  const MexicoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FoodScreen(
      country: 'México',
      dish: 'Tacos',
      imagePath: 'assets/taco.jpeg',
      description:
          'Os tacos mexicanos são tortilhas recheadas com carne, legumes, queijo e molhos picantes. São muito populares e saborosos.',
    );
  }
}
