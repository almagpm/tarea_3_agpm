import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAE0D5),  // Fondo de toda la pantalla cambiado a  95A9C0
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Califica tus lecturas favoritas',
              style: TextStyle(
                fontSize:   24, // Tamaño de fuente grande
                fontWeight: FontWeight.bold,
              ),
            ),
            Transform.scale(
              scale:   0.8, // Escala la animación a la mitad de su tamaño original
              child: Lottie.network(
                'https://lottie.host/ee321e36-ef52-49d2-b737-c605cd4cc8e1/Z5LuBhfoK3.json',
              ),
            ),
            Text(
              '¡Sumérgete en un universo de libros y califica tus lecturas!, sigue tus autores preferidos y puntúa cada libro que leas con nuestra aplicación intuitiva.',
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
