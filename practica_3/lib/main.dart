import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple, // Linea para cambiar el color de la barra
          title: const Text('zxuan'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
              'Hello To set the color of the navigation bar, you can use SystemChrome.setSystemUIOverlayStyle method. Using SystemChrome requires you to import package:flutter/services.dart first.',
               textAlign: TextAlign.center,
               style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Cambria',
                fontSize: 35
               ),),
        ),
        floatingActionButton: 
        FloatingActionButton.extended(
          onPressed: (){}, 
          label: const Text('Aprobado'),
          icon: const Icon(
            Icons.thumb_up, 
            color: Colors.white),
          ),
      ),
    );
  }
}
