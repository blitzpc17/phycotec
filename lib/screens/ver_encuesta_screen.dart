import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:psicotec/model/encuesta.dart';
import 'package:psicotec/provider/selectState.dart';
import 'package:psicotec/screens/screens.dart';
import 'package:psicotec/widgets/input_Form.dart';

class VerEncuestaScreen extends StatefulWidget {
  final Encuesta encuesta;
  static String name = "ver_encuesta_screen";
  const VerEncuestaScreen({super.key, required this.encuesta});

  @override
  State<VerEncuestaScreen> createState() => _VerEncuestaScreenState();
}

class _VerEncuestaScreenState extends State<VerEncuestaScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
          title: const Text('ENCUESTA')
      ), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(        
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width -32,
                child: Card(          
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("*Datos registrados del paciente:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        const SizedBox(height: 10,),
                        const Text("Email:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Text(widget.encuesta.email, style: const TextStyle(fontSize: 18)),
                        const Text("Mótivo de la consulta:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP2.firstWhere((el) => el.value == widget.encuesta.p1).label, style: const TextStyle(fontSize: 18));
                        }),                   
                        const Text("Técnicas e Instrumentos:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP3.firstWhere((el) => el.value == widget.encuesta.p2).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("¿Padres juntos?:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                          Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP4.firstWhere((el) => el.value == widget.encuesta.p3).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("Padre fallecido:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                          Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP5.firstWhere((el) => el.value == widget.encuesta.p4).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("Madre fallecida:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP6.firstWhere((el) => el.value == widget.encuesta.p5).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("Conflictos con el padre:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP7.firstWhere((el) => el.value == widget.encuesta.p6).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("Conflictos con la madre:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP8.firstWhere((el) => el.value == widget.encuesta.p7).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("Conflictos con otros familiares:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP9.firstWhere((el) => el.value == widget.encuesta.p8).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("Actitud de los padres:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                          Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP10.firstWhere((el) => el.value == widget.encuesta.p9).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("Número de hermanos:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                          Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP11.firstWhere((el) => el.value == widget.encuesta.p10).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("Número de hermanas:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP14.firstWhere((el) => el.value == widget.encuesta.p11 ).label, style: const TextStyle(fontSize: 18));
                        }),  
                        const Text("Relación con los hermanos:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP11.firstWhere((el) => el.value == widget.encuesta.p13 ).label, style: const TextStyle(fontSize: 18));
                        }), 
                        const Text("Problemas que se detectan en la vida familiar:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Consumer<SelectState>(builder: (context, selectState, child){
                          return Text(  selectState.optionsP12.firstWhere((el) => el.value == widget.encuesta.p12 ).label, style: const TextStyle(fontSize: 18));
                        }), 
                        const Text("Con quién vive actualmente:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Text(widget.encuesta.p15, style: const TextStyle(fontSize: 18)),
                        const Text("Antecedentes del paciente:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Text(widget.encuesta.p17, style: const TextStyle(fontSize: 18)),
                      
                      ],
                    ),
                
                  ),
                
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width -32,
                child: Card(          
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("*Evaluación del paciente:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        const SizedBox(height: 12),
                        const Text("ASPECTO FÍSICO:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Vestimenta:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                         const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Higiene Corporal:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Mirada y Expresion Facial:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Posturas:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        const Text("ACTITUDES:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Preocupación excesiva:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                         const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Preocupación acorde a la realidad:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Indiferencia:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),                        
                        const SizedBox(height: 10),
                        const Text("COMPORTAMIENTO:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Seductor:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Tímido:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Agresivo:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Burlón:", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Desconfiado", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Arrogante", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            //objEncuesta.p12 = value.toString();
                        }),

                      
                      ],
                    ),
                
                  ),
                
                ),
              ),

              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width -32,
                child: Card(          
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [                     
                        const Text("NOTA PSICOLÓGICA SUBSECUENTE:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.check,
                          noLineas: 10,
                          onChanged: (value){

                          },
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.check,
                          noLineas: 10,
                          onChanged: (value){

                          },
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.check,
                          noLineas: 10,
                          onChanged: (value){

                          },
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.check,
                          noLineas: 10,
                          onChanged: (value){

                          },
                        ),
                        const SizedBox(height: 10),
                      ]
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20)


            ]
          ),
        ),
      
        ),
    );
  }
}