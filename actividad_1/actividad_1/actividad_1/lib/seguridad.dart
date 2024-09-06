import 'package:flutter/material.dart';

class MateSeguridad extends StatelessWidget {
  const MateSeguridad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seguridad de Acceso a Redes Públicas'),
        backgroundColor: const Color.fromARGB(255, 3, 169, 244),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0), // Agrega un padding alrededor del contenido
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Centra los elementos en el eje horizontal
          children: [
            // Imagen circular en la parte superior
            CircleAvatar(
              radius: 80, // Tamaño del avatar circular
              backgroundImage: AssetImage('assets/icons/PSeg.jpg'), // Imagen de perfil, asegúrate de tenerla en la carpeta de assets
            ),
            SizedBox(height: 20), // Espacio entre la imagen circular y el texto
            // Texto en negritas
            Text(
              'JORGE NEYTON AVILA',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold, // Texto en negritas
                color: Colors.black, // Color del texto
              ),
            ),
            SizedBox(height: 20), // Espacio entre el texto en negritas y la imagen rectangular
            // Imagen rectangular que ocupa todo el ancho disponible
            ClipRect(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity, // Ocupa todo el ancho disponible
                  height: 150,
                  child: Image(
                    image: AssetImage('assets/icons/seguridad_banner.png'), // Imagen rectangular, asegúrate de tenerla en la carpeta de assets
                    fit: BoxFit.cover, // Ajusta la imagen para cubrir el contenedor
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Espacio entre la imagen rectangular y el texto normal
            // Texto normal justificado
            Text(
              'Seguridad de Acceso a Redes Públicas se refiere a las prácticas y tecnologías utilizadas para proteger la información y los sistemas que están expuestos a redes públicas, como Internet. Incluye la implementación de medidas de seguridad como firewalls, cifrado, autenticación y control de acceso para prevenir accesos no autorizados, ataques cibernéticos y filtraciones de datos en redes que son accesibles a un amplio público.',
              style: TextStyle(
                fontSize: 16, // Tamaño del texto
                color: Colors.black, // Color del texto
              ),
              textAlign: TextAlign.justify, // Justifica el texto
            ),
          ],
        ),
      ),
    );
  }
}
