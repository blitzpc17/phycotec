import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:psicotec/screens/loading_screen.dart';
import 'package:psicotec/screens/screens.dart';
import 'package:psicotec/services/services.dart';

class EncuestasRecibidasScreen extends StatefulWidget {
  const EncuestasRecibidasScreen({super.key});
  static String name = "encuestas_recibidas_screen";

  @override
  State<EncuestasRecibidasScreen> createState() => _EncuestasRecibidasScreenState();
}

class _EncuestasRecibidasScreenState extends State<EncuestasRecibidasScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final encuestaService = Provider.of<EncuestaService>(context, listen: false);
      encuestaService.loadEncuestas();
    });
  }

  @override
  Widget build(BuildContext context) {
   // final authService = Provider.of<AuthService>(context, listen: false);
    final encuestaService = Provider.of<EncuestaService>(context);

    if (encuestaService.isLoading) return LoadingScreen();

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
          title: const Text('ENCUESTA')
      ), 
      body: ListView.builder(
        itemCount: encuestaService.encuestas.length,
        itemBuilder: (context, index) {
          final encuesta = encuestaService.encuestas[index];
          return ListTile(
              title: Text("DE: ${encuesta.email}"),
              subtitle: const Text("Fecha recibido: 20/05/2024"),
              onTap: (){
                encuestaService.obtenerEncuestaByEmail(encuesta.email);
                context.pushNamed(VerEncuestaScreen.name, extra: encuestaService.encuestaSeleccionada);
              },
            );
        },
      ),
    );
  }
}
