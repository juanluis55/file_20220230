import 'package:flutter/material.dart';
import 'Sheared.dart'; // Asegúrate de usar el nombre correcto del archivo

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200], // Fondo gris bajo
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey, // Color blanco para el esquema
          accentColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool _workChecked = false;
  bool _homeChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                Icon(Icons.more_horiz_rounded),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Browse",
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white, // Contenedor blanco
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Icon(Icons.mic),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 10.0),
                    Text(
                      "Locations",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 40.0),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.cloud),
                        title: Text('¡Cloud drive'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone_android),
                        title: Text('On My Iphone'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.drive_file_move),
                        title: Text('Drive'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.cloud_queue),
                        title: Text('pCloud'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.delete),
                        title: Text('Recently Deleted'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 3.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 10.0),
                    Text(
                      "Favorites",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 20.0),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  child: const ListTile(
                    leading: Icon(Icons.download),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Downloads', style: TextStyle(fontSize: 18.0)),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 10.0),
                    Text(
                      "Tags",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 20.0),
                  ],
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CheckboxListTile(
                          title: const Text('Work'),
                          secondary: const Icon(Icons.arrow_forward_ios),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: _workChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _workChecked = value!;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('Home'),
                          secondary: const Icon(Icons.arrow_forward_ios),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: _homeChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _homeChecked = value!;
                            });
                          },
                        ),
                      ], 
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBar(
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
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HelloPage()),
        );
      }if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Juan()),
        );
      }






    });
  }
}
