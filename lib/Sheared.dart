// ignore: file_names
import 'package:email_20220230/main.dart';
import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget {
  const HelloPage({Key? key}) : super(key: key);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  int _selectedIndex = 1; // Inicializar con el índice correcto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sheared'),
      ),
      body: const Center(
        child: Text('Hola Pagina Nueva'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Shared',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Browse',
          ),
        ],
        selectedItemColor: Colors.lightBlue[800],
        currentIndex: _selectedIndex,
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MyApp()),
        );
      } else if (_selectedIndex == 2) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Juan()),
        );
      }
    });
  }
}

class Juan extends StatelessWidget {
  const Juan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse'),
      ),
      body: const Center(
        child: Text('Hola Pagina Nueva'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Shared',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Browse',
          ),
        ],
        selectedItemColor: Colors.lightBlue[800],
        currentIndex: 2, // Índice correspondiente a la pestaña "Browse"
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyApp()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HelloPage()),
      );
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recents'),
      ),
      body: const Center(
        child: Text('Hola Página Recents'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Shared',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Browse',
          ),
        ],
        selectedItemColor: Colors.lightBlue[800],
        currentIndex: 0, // Índice correspondiente a la pestaña "Recents"
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HelloPage()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Juan()),
      );
    }
  }
}
