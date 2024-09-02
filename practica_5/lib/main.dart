import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
          ListTile(
                title: Text('Ingenieria en Telematica'),
                subtitle: Text('La mejor de todas JiJiJaJa'),
                trailing: Icon(
                  Icons.network_wifi_outlined,
                  color: Colors.amber,
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6TtOuhUSbh_lT9NQ0QbZSyDbACO0xtSPbAw&s'),
                )),
            ListTile(
              title: Text('Domotica e Inmotica'),
              subtitle: Text('Programación Movil'),
              trailing: Icon(
                Icons.phonelink_setup_rounded,
                color: Color.fromARGB(255, 14, 109, 187),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1681305757960-8346c233ff4b?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
            ),
            const ListTile(
              title: Text('Comunicación Digital'),
              subtitle: Text('Comunicación con microcontroladores'),
              trailing: Icon(
                Icons.wifi_tethering_rounded,
                color: Color.fromARGB(255, 66, 165, 245),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1603791452906-e5adf02c5537?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'),
              ),
            ),
            const ListTile(
              title: Text('Ingeniería de Software'),
              subtitle: Text('Oh me duermo'),
              trailing: Icon(
                Icons.code_rounded,
                color: Color.fromARGB(255, 66, 165, 245),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1591696335940-7555ffb1a06d?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'),
              ),
            ),
            const ListTile(
              title: Text('Informática Forense'),
              subtitle: Text('Esta chida'),
              trailing: Icon(
                Icons.security_rounded,
                color: Color.fromARGB(255, 66, 165, 245),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1606760727421-9da134e08e4b?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'),
              ),
            ),
            const ListTile(
              title: Text('Seminario de Investigación'),
              subtitle: Text('Tesis'),
              trailing: Icon(
                Icons.school_rounded,
                color: Color.fromARGB(255, 66, 165, 245),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1573496014796-b2b97d7bc94c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'),
              ),
            ),
            const ListTile(
              title: Text('Programación Web'),
              subtitle: Text('Desarrollo de aplicaciones web modernas'),
              trailing: Icon(
                Icons.web_rounded,
                color: Color.fromARGB(255, 101, 169, 225),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1504805572947-34fad45aed93?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'),
              ),
            ),
            const ListTile(
              title: Text('Conmutación y Enrutamiento'),
              subtitle: Text('Gestión de tráfico en redes'),
              trailing: Icon(
                Icons.router_rounded,
                color: Color.fromARGB(255, 66, 165, 245),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1559151158-65a1eaa08691?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'),
              ),
            ),
            const ListTile(
              title: Text('Seguridad Perimetral'),
              subtitle: Text('Protección en el borde de la red'),
              trailing: Icon(
                Icons.shield_rounded,
                color: Color.fromARGB(255, 61, 155, 232),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1578926288949-6508b97f782d?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'),
              ),
            ),
            const ListTile(
              title: Text('Seguridad en Redes de Acceso'),
              subtitle: Text('Protección de redes locales'),
              trailing: Icon(
                Icons.security_rounded,
                color: Color.fromARGB(255, 66, 165, 245),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1601990249204-fb5b5ba95304?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
