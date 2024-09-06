import 'package:flutter/material.dart';

class MateSoftware extends StatelessWidget {
  const MateSoftware({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingeniería de Software'),
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
              backgroundImage: AssetImage('assets/icons/PSof.jpg'), // Asegúrate de tener esta imagen en tu carpeta assets
            ),
            SizedBox(height: 20), // Espacio entre la imagen circular y el texto
            // Texto en negritas
            Text(
              'EDUARDO RUBEN HERNANDEZ',
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
              child: Image(
                image: AssetImage('assets/icons/software_banner.png'), // Asegúrate de tener esta imagen en tu carpeta assets
                fit: BoxFit.cover, // Ajusta la imagen para cubrir el contenedor
              ),
            ),
            SizedBox(height: 20), // Espacio entre la imagen rectangular y el texto normal
            // Texto normal justificado
            Text(
              'Ingeniería de Software es una disciplina que se centra en la aplicación de principios y prácticas de ingeniería para el desarrollo, diseño, implementación y mantenimiento de software. Su objetivo es crear sistemas de software de alta calidad, eficientes, confiables y que cumplan con los requisitos del usuario, utilizando metodologías, herramientas y técnicas específicas.',
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
