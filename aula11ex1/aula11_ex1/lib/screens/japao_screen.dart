import 'package:flutter/material.dart';
import 'brasil_screen.dart'; // reutiliza FoodScreen

class JapaoScreen extends StatelessWidget {
  const JapaoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FoodScreen(
      country: 'Japão',
      dish: 'Sushi',
      imagePath: 'assets/sushi.jpeg',
      description:
          'O sushi japonês é feito com arroz temperado, peixe cru, vegetais e algas, sendo uma iguaria leve e refinada.',
    );
  }
}
