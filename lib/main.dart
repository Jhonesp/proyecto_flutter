import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Proyecto Flutter"),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            print("Presionado");
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: "Negocio"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "Escuela"),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const ListTile(
                  leading: Icon(Icons.message), title: Text("Mensajes")),
              const ListTile(
                  leading: Icon(Icons.settings), title: Text("Ajustes")),
              const ListTile(
                  leading: Icon(Icons.exit_to_app), title: Text("Salir")),
            ],
          ),
        ),
      ),
    );
  }
}
