import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class ResponsiveDrawer extends StatelessWidget {
  const ResponsiveDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplo drawer responsivo')),
      drawer: ancho,
    );
  }
}

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('xd')),
    );
  }
}
