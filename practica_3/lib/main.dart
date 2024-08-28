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
          backgroundColor: Colors.blueAccent, // Línea para cambiar el color de la barra
          title: const Text('zxuan'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                duration: Duration(milliseconds: 250),
                curve: Curves.fastOutSlowIn,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 45, // Radio del círculo
                      backgroundImage: AssetImage('icons/si.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Menú Principal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.star_border_sharp, 
                  color: Color.fromRGBO(33, 150, 243, 1),
                ),
                title: Text("Favoritos"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.access_alarm, 
                  color: Color.fromRGBO(33, 150, 243, 1),
                ),
                title: Text("Alarmas"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.access_time_filled_sharp, 
                  color: Color.fromRGBO(33, 150, 243, 1),
                ),
                title: Text("Recientes"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.accessibility_new, 
                  color: Color.fromRGBO(33, 150, 243, 1),
                ),
                title: Text("T pose"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.add_a_photo, 
                  color: Color.fromRGBO(33, 150, 243, 1),
                ),
                title: Text("Fotos"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.add_box_sharp, 
                  color: Color.fromRGBO(33, 150, 243, 1),
                ),
                title: Text("Agregar"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.add_business, 
                  color: Color.fromRGBO(33, 150, 243, 1),
                ),
                title: Text("Tele"),
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text(
            'Hello To set the color of the navigation bar, you can use SystemChrome.setSystemUIOverlayStyle method. Using SystemChrome requires you to import package:flutter/services.dart first.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Cambria',
              fontSize: 35,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){}, 
          label: const Text('Aprobado'),
          icon: const Icon(
            Icons.thumb_up, 
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
