import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBDC6A2),  // Fondo de toda la pantalla cambiado a  95A9C0
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Explora tus lecturas favoritas',
              style: TextStyle(
                fontSize:   24, // Tamaño de fuente grande
                fontWeight: FontWeight.bold,
              ),
            ),
            Transform.scale(
              scale:   0.6, // Escala la animación a la mitad de su tamaño original
              child: Lottie.network(
                'https://lottie.host/c6bcb1c3-d76d-410f-b540-efd5d946602e/aOR8uXTWGU.json',
              ),
            ),
            Text(
              '¡Descubre un mundo de libros que te encantarán! Sigue tus autores preferidos y explora nuevos géneros con nuestra aplicación.',
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
