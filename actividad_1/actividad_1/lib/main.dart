import 'package:flutter/material.dart';
import 'package:practica_3/domotica.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apps dentro de app'),
        backgroundColor: const Color.fromARGB(255, 15, 15, 15),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text('ola'),
            ),
            ListTile(
              title: const Text('Domitica'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Domotica()));
              },
            ),
            ListTile(
              title: const Text('Salir'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}