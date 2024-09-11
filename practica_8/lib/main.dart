import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveDrawer()
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
      drawer: ancho < 600
      ? const MobileDrawer()
      : const TabletDrawer(),
    );
  }
}

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio Movil'),
          )
        ],
      ),
  );
 }

}


class TabletDrawer extends StatelessWidget {
  const TabletDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio Tablet'),
          )
        ],
      ),
  );
 }
}