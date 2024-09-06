
import 'package:flutter/material.dart';

class MateSeminario extends StatelessWidget {
  const MateSeminario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seminario de Desarrollo Tecnológico'),
        backgroundColor: const Color.fromARGB(255, 3, 169, 244),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0), // Agrega un padding alrededor del contenido
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Imagen circular en la parte superior
            CircleAvatar(
              radius: 80, // Tamaño del avatar circular
              backgroundImage: AssetImage('icons/PCom.jpg'), // Asegúrate de tener esta imagen en tu carpeta assets
            ),
            SizedBox(height: 20), // Espacio entre la imagen circular y el texto
            // Texto en negritas
            Text(
              'LOPEZ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Puedes cambiar el color del texto aquí
              ),
            ),
            SizedBox(height: 20), // Espacio entre el texto en negritas y la imagen rectangular
            // Imagen rectangular que ocupa todo el ancho
            SizedBox(
              width: double.infinity, // Ocupa todo el ancho disponible
              height: 150,
              child: Image(
                image: AssetImage('icons/comunicacion_banner.png'), // Asegúrate de tener esta imagen en tu carpeta assets
                fit: BoxFit.cover, // Ajusta la imagen para cubrir el contenedor
              ),
            ),
            SizedBox(height: 20), // Espacio entre la imagen rectangular y el texto normal
            // Texto normal justificado
            Text(
              'Comunicación Digital se refiere al intercambio de información a través de medios digitales, como redes sociales, correos electrónicos y aplicaciones de mensajería. Incluye el uso de tecnologías y plataformas digitales para crear, compartir y gestionar contenido, facilitando una comunicación eficiente y rápida en entornos virtuales.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Puedes cambiar el color del texto aquí
              ),
              textAlign: TextAlign.justify, // Justifica el texto
            ),
          ],
        ),
      ),
    );
  }
}
