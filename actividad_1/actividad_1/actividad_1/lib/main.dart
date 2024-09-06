import 'package:flutter/material.dart';
import 'package:actividad_1/domotica.dart';
import 'package:actividad_1/comunicacion.dart';
import 'package:actividad_1/dispositivos.dart';
import 'package:actividad_1/seguridad.dart';
import 'package:actividad_1/seminario.dart';
import 'package:actividad_1/software.dart';
import 'dart:io'; // Necesario para cerrar la app en plataformas móviles

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Configura el MaterialApp que contiene la aplicación
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, // Elimina el banner de modo debug
      home: MainPage(), // Establece MainPage como la pantalla inicial
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Construye la pantalla principal con un Scaffold que incluye una AppBar y un Drawer
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendario Escolar: Información y Descripción de Materias'),
        backgroundColor: const Color.fromARGB(255, 3, 169, 244),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Encabezado del Drawer con información del usuario y el título del menú
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 169, 244),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Imagen de perfil
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/icons/default.webp'), // Asegúrate de tener esta imagen en tu carpeta assets
                  ),
                  SizedBox(height: 10), // Espacio entre la imagen y el texto
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
            // Elementos del menú del Drawer con íconos y navegación
            HoverableListTile(
              title: 'Domótica',
              icon: Icons.device_hub, // Icono para Domótica
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MateDomotica()),
                );
              },
            ),
            const Divider(), // Separador entre elementos del menú
            HoverableListTile(
              title: 'Ingeniería de Software',
              icon: Icons.code, // Icono para Ingeniería de Software
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MateSoftware()),
                );
              },
            ),
            const Divider(),
            HoverableListTile(
              title: 'Seguridad de Acceso a Redes Públicas',
              icon: Icons.lock, // Icono para Seguridad de Acceso a Redes Públicas
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MateSeguridad()),
                );
              },
            ),
            const Divider(),
            HoverableListTile(
              title: 'Comunicación Digital',
              icon: Icons.speaker, // Icono para Comunicación Digital
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MateComunicacion()),
                );
              },
            ),
            const Divider(),
            HoverableListTile(
              title: 'Seminario de Investigación Tecnológica II',
              icon: Icons.school, // Icono para Seminario de Investigación Tecnológica II
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MateSeminario()),
                );
              },
            ),
            const Divider(),
            HoverableListTile(
              title: 'Dispositivos Autónomos',
              icon: Icons.devices, // Icono para Dispositivos Autónomos
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MateDispositivos()),
                );
              },
            ),
            const Divider(),
            HoverableListTile(
              title: 'Salir',
              icon: Icons.exit_to_app, // Icono para Salir
              onTap: () {
                exit(0); // Cierra la aplicación
              },
            ),
            const Divider(),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen en la pantalla principal
            Image(
              image: AssetImage('assets/icons/main.png'), // Asegúrate de tener esta imagen en tu carpeta assets
            ),
            SizedBox(height: 20), // Espacio entre la imagen y el texto
            Text(
              '¡Estás al día!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Puedes cambiar el color del texto aquí
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget personalizado para añadir el efecto con transición al tocar el botón
class HoverableListTile extends StatefulWidget {
  final String title; // Título del ListTile
  final IconData icon; // Icono del ListTile
  final VoidCallback? onTap; // Callback para la acción al tocar el ListTile

  const HoverableListTile({super.key, required this.title, required this.icon, this.onTap});

  @override
  _HoverableListTileState createState() => _HoverableListTileState();
}

class _HoverableListTileState extends State<HoverableListTile> {
  // Color actual del ListTile
  Color _tileColor = const Color.fromARGB(0, 255, 235, 87); // Color inicial

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Detecta el inicio del toque
      onTapDown: (_) {
        setState(() {
          _tileColor = const Color.fromARGB(255, 255, 193, 7); // Cambia el color al mantener presionado
        });
      },
      // Detecta el fin del toque
      onTapUp: (_) {
        setState(() {
          _tileColor = const Color.fromARGB(0, 255, 235, 87); // Vuelve al color original cuando se suelta
        });
      },
      // Detecta si el toque es cancelado
      onTapCancel: () {
        setState(() {
          _tileColor = const Color.fromARGB(0, 255, 235, 87); // Vuelve al color original si se cancela el tap
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300), // Duración de la transición
        color: _tileColor, // Color actual del ListTile
        child: ListTile(
          leading: Icon(widget.icon), // Muestra el icono
          title: Text(widget.title), // Muestra el título
          onTap: widget.onTap, // Acción al tocar el ListTile
        ),
      ),
    );
  }
}
