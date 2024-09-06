import 'package:flutter/material.dart';
import 'package:actividad_1/domotica.dart';
import 'dart:io'; // Necesario para cerrar la app en plataformas móviles

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apps dentro de app'),
        backgroundColor: const Color.fromARGB(255, 3, 169, 244),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 169, 244),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('icons/default.webp'), // Asegúrate de tener esta imagen en tu carpeta assets
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Menu Principal',
                    style: TextStyle(
                      color: Color.fromARGB(255, 33, 33, 33),
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            HoverableListTile(
              title: 'Domótica',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MateDomotica()),
                );
              },
            ),
            HoverableListTile(
              title: 'Salir',
              onTap: () {
                exit(0); // Cierra la aplicación
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Contenido Principal'),
      ),
    );
  }
}

// Widget personalizado para añadir el efecto con transición al oprimir el botón
class HoverableListTile extends StatefulWidget {
  final String title;
  final VoidCallback? onTap;

  const HoverableListTile({super.key, required this.title, this.onTap});

  @override
  _HoverableListTileState createState() => _HoverableListTileState();
}

class _HoverableListTileState extends State<HoverableListTile> {
  Color _tileColor = const Color.fromARGB(0, 255, 235, 87); // Color inicial del ListTile

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300), // Duración de la transición
      color: _tileColor,
      child: ListTile(
        title: Text(widget.title),
        onTap: () {
          setState(() {
            _tileColor = _tileColor == const Color.fromARGB(0, 255, 235, 87)
                ? const Color.fromARGB(255, 255, 193, 7) // Cambia el color al oprimir
                : const Color.fromARGB(0, 255, 235, 87); // Vuelve al color original
          });
          if (widget.onTap != null) {
            widget.onTap!();
          }
        },
      ),
    );
  }
}
