import 'package:flutter/material.dart';

void main() {
  runApp(NavBottom());
}

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBottom(),
    );
  }
}

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  
  int selectindex =0;
  static const TextStyle option = TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold);

    static const List<Widget> _widgetOpt = <Widget>[
      
    ];
    void onItemTapped(int index){
      setState(() {
        selectindex =index;
      });
    }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Aplicativo aula 11"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        // _widgetOptions é a lista de de telas 
        // selectedindex é o index selecionado da tela
        child: _widgetOpt.elementAt(selectindex),
      ),
      // Bottom navigator bar
      bottomNavigationBar: BottomNavigationBar
      (
        currentIndex: selectindex,
      selectedItemColor: Colors.white,
      onTap: onItemTapped,
      backgroundColor: Colors.red,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
        icon:Icon(Icons.home),
        label:'Home',
        backgroundColor: Colors.red
        
       ),

        BottomNavigationBarItem(
          icon: Icon(Icons.school_outlined),
          label: 'School',
          backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.business_outlined),
          label: 'Business',
          backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.smart_toy_rounded),
          label: 'Chatbot',
          backgroundColor: Colors.teal,
          ),
      ],
      
      
      ),
    );
  }
  }
