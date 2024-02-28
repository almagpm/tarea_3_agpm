import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAFD0E2),  // Fondo de toda la pantalla cambiado a  95A9C0
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' Conecta con otros lectores',
              style: TextStyle(
                fontSize:   24, // Tamaño de fuente grande
                fontWeight: FontWeight.bold,
              ),
            ),
            Transform.scale(
              scale:   0.9, // Escala la animación a la mitad de su tamaño original
              child: Lottie.network(
                'https://lottie.host/a95c3622-eb73-4b30-826f-5f36913366e9/pkwh3cJWKN.json',
              ),
            ),
            Text(
              '¡Sumérgete en el mundo de la lectura! conecta con otros lectores a través de reseñas y diálogos en nuestra aplicación dedicada a la pasión por la lectura',
              style: TextStyle(
                fontSize:   16, // Tamaño de fuente más pequeño
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}