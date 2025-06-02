import 'package:flutter/material.dart';

class BrasilScreen extends StatelessWidget {
  const BrasilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FoodScreen(
      country: 'Brasil',
      dish: 'Feijoada',
      imagePath: 'assets/feijoada.jpeg',
      description:
          'A feijoada é um prato tradicional brasileiro feito com feijão preto e carnes, geralmente acompanhado de arroz, farofa e couve.',
    );
  }
}

class FoodScreen extends StatelessWidget {
  final String country;
  final String dish;
  final String imagePath;
  final String description;

  const FoodScreen({
    super.key,
    required this.country,
    required this.dish,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$country: $dish',
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                imagePath,
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
