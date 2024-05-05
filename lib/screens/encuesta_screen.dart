import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EncuestaScreen extends StatelessWidget {
  static const  name = 'encuesta_screen';
  const EncuestaScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35),
            _EncuestaForm(),
            const SizedBox(height: 35),

          ],
        ),
      ),     
    );
  }
}

class _EncuestaForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child:Column(            
            children: [
             const Text("*Lea y conteste las siguiente preguntas de forma clara y honestamente posible."),
             SizedBox(height: 10),
             const Text("1.- Motivo de la consulta"),
             SizedBox(height: 10),
             const Text("*Seleccione su estado psicológico:"),
             SizedBox(height: 10),
             const Text("2.- Técnicas e instrumentos psicológicos aplicados:"),
             SizedBox(height: 10),
             const Text("3.- Antecedentes familiares"),
             SizedBox(height: 10),
             const Text("*Actitud de los padres:"),
             SizedBox(height: 10),
             const Text("*Número de hermanods"),


            ],
          ))),

    );
  }
}