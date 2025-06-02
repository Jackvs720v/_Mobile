import 'package:flutter/material.dart';
import 'screens/brasil_screen.dart';
import 'screens/italia_screen.dart';
import 'screens/japao_screen.dart';
import 'screens/mexico_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodNavigator(),
    );
  }
}

class FoodNavigator extends StatefulWidget {
  const FoodNavigator({super.key});

  @override
  State<FoodNavigator> createState() => _FoodNavigatorState();
}

class _FoodNavigatorState extends State<FoodNavigator> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    BrasilScreen(),
    ItaliaScreen(),
    JapaoScreen(),
    MexicoScreen(),
  ];

  final List<BottomNavigationBarItem> _bottomItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Brasil'),
    BottomNavigationBarItem(icon: Icon(Icons.local_pizza), label: 'Itália'),
    BottomNavigationBarItem(icon: Icon(Icons.rice_bowl), label: 'Japão'),
    BottomNavigationBarItem(icon: Icon(Icons.local_dining), label: 'México'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comidas Típicas'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}