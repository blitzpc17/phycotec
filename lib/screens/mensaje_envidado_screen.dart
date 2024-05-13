import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:psicotec/screens/screens.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  //context.push('/homes');
                  context.pushReplacementNamed(HomeScreen.name);
                },
                child: const Text('Ir al Inicio'), // Texto del botón
              ),
               const SizedBox(height: 20), // Espacio entre el texto y el botón
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón
                  _launchLinkCrome("http://cij.gob.mx/autodiagnostico/frmansiedad.asp");
                },
                child: const Text('Continuar con encuesta...'), // Texto del botón
              ),
            ],
          ),

    ));
  }
  
  void _launchLinkCrome(String link) async {

    Uri url = Uri.parse(link);
    launchUrl(url);

  }


}