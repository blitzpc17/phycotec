import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MensajeEnviadoScreen extends StatelessWidget {
  static const name = 'mensaje_enviado';
  const MensajeEnviadoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/enviado.png', // Ruta de la imagen
                width: 200, // Ancho de la imagen
              ),
              const SizedBox(height: 20), // Espacio entre la imagen y el texto
              const Text(
                '¡Tús respuestas han sido enviadas!', // Texto grande
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20), // Espacio entre el texto y el botón
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón
                  context.push('/homes');
                },
                child: const Text('Ir al Inicio'), // Texto del botón
              ),
            ],
          ),

    ));
  }
}