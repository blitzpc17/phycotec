import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:psicotec/model/encuesta.dart';
import 'package:psicotec/model/models.dart';
import 'package:psicotec/provider/selectState.dart';
import 'package:psicotec/screens/screens.dart';
import 'package:psicotec/services/services.dart';
import 'package:psicotec/widgets/input_Form.dart';

class VerEncuestaScreen extends StatefulWidget {
  final Encuesta encuesta;
  static String name = "ver_encuesta_screen";
  const VerEncuestaScreen({super.key, required this.encuesta});

  @override
  State<VerEncuestaScreen> createState() => _VerEncuestaScreenState();
}

class _VerEncuestaScreenState extends State<VerEncuestaScreen> {

    late Validacion objValidacion;

    late TextEditingController _r1;
    late TextEditingController _r2;
    late TextEditingController _r3;
    late TextEditingController _r4;  
    late TextEditingController _r5;
    late TextEditingController _r6;  
    late TextEditingController _r7;
    late TextEditingController _r8;  
    late TextEditingController _r9;
    late TextEditingController _r10;
    late TextEditingController _r11;
    late TextEditingController _r12;  
    late TextEditingController _r13;
    late TextEditingController _r14;  
    late TextEditingController _r15;
    late TextEditingController _r16;
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     objValidacion = Validacion(
      email: "", 
      r1: "", 
      r2: "", 
      r3: "", 
      r4: "", 
      r5: "", 
      r6: "",
      r7: "", 
      r8: "", 
      r9: "", 
      r10: "", 
      r11: "", 
      r12: "", 
      r13: "", 
      r14: "",
      r15: "", 
      r16: ""
    );
    
    final encuestaservice = Provider.of<EncuestaService>(context, listen: false);

    setState(() {
          if(encuestaservice.validacionSeleccionada!=null){
            _r1 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r1);
            _r2 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r2);
            _r3 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r3);
            _r4 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r4);
            _r5 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r5);
            _r6 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r6);
            _r7 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r7);
            _r8 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r8);
            _r9 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r9);
            _r10 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r10);
            _r11 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r11);
            _r12 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r12);
            _r13 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r13);
            _r14 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r14);
            _r15 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r15);
            _r16 = TextEditingController(text: encuestaservice.validacionSeleccionada!.r16);
          }else{
            _r1 = TextEditingController(text: "");
            _r2 = TextEditingController(text: "");
            _r3 = TextEditingController(text: "");
            _r4 = TextEditingController(text: "");
            _r5 = TextEditingController(text: "");
            _r6 = TextEditingController(text: "");
            _r7 = TextEditingController(text: "");
            _r8 = TextEditingController(text: "");
            _r9 = TextEditingController(text: "");
            _r10 = TextEditingController(text: "");
            _r11 = TextEditingController(text: "");
            _r12 = TextEditingController(text: "");
            _r13 = TextEditingController(text: "");
            _r14 = TextEditingController(text: "");
            _r15 = TextEditingController(text: "");
            _r16 = TextEditingController(text: "");

          }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _r1.dispose();
    _r2.dispose();
    _r3.dispose();
    _r4.dispose() ;
    _r5.dispose();
    _r6.dispose(); 
    _r7.dispose();
    _r8.dispose();
    _r9.dispose();
    _r10.dispose();
    _r11.dispose();
    _r12.dispose();
    _r13.dispose();
    _r14.dispose();
    _r15.dispose();
    _r16.dispose();
    super.dispose();
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
                            controller: _r1,                                                     
                            onChanged: (value){
                               objValidacion.r1 = value.toString();                              
                          }),                    
                         const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Higiene Corporal:", 
                          hintText: "", 
                          errorMessage:"", 
                          controller: _r2,     
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r2 = value.toString();
                        }),
                        const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Mirada y Expresion Facial:", 
                          hintText: "", 
                          errorMessage:"", 
                          controller: _r3,     
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r3 = value.toString();
                        }),
                        const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Posturas:", 
                          hintText: "", 
                          controller: _r4,     
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r4 = value.toString();
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
                          controller: _r5,     
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r5 = value.toString();
                        }),
                         const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Preocupación acorde a la realidad:", 
                          hintText: "", 
                          errorMessage:"", 
                          controller: _r6,     
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r6 = value.toString();
                        }),
                        const SizedBox(height: 10),
                         InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Indiferencia:", 
                          hintText: "", 
                          errorMessage:"", 
                            controller: _r7,     
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r7 = value.toString();
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
                          controller: _r8,     
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r8 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Tímido:", 
                          hintText: "", 
                          errorMessage:"", 
                          controller: _r9,     
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r9 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Agresivo:", 
                          hintText: "", 
                          errorMessage:"", 
                          controller: _r10,     
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r10 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Burlón:", 
                          hintText: "", 
                          controller: _r11,     
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r11 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Desconfiado", 
                          hintText: "", 
                          errorMessage:"", 
                          controller: _r12,     
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r12 = value.toString();
                        }),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Arrogante", 
                          controller: _r13,     
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.abc,
                          onChanged: (value){
                            objValidacion.r13 = value.toString();
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
                          label: "Objetivo", 
                          hintText: "", 
                          controller: _r14,     
                          errorMessage:"", 
                          icono: Icons.check,
                          noLineas: 10,
                          onChanged: (value){
                            objValidacion.r14 = value.toString();
                          },
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Observación", 
                          controller: _r15,     
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.check,
                          noLineas: 10,
                          onChanged: (value){
                            objValidacion.r15 = value.toString();
                          },
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        InputForm(
                          autocorrect: false, 
                          obscureText: false, 
                          keyboardType: TextInputType.text, 
                          label: "Logros/Avances", 
                          hintText: "", 
                          errorMessage:"", 
                          icono: Icons.check,
                          controller: _r16,     
                          noLineas: 10,
                          onChanged: (value){
                            objValidacion.r16 = value.toString();
                          },
                        ),
                        const SizedBox(height: 10),
                      ]
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
               Center(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    disabledColor: Colors.grey,
                    elevation: 0,
                    color: Colors.blueAccent,
                    onPressed: () async {                     
                     
                      //objEncuesta.email = email;
                      final encuestaservice = Provider.of<EncuestaService>(context, listen: false);
                      objValidacion.email = widget.encuesta.email;
                      encuestaservice.createRespuestaPsicoloca(objValidacion);
                        NotificationsService.showSnackbar("¡Guardado exitoso!", Colors.green.shade400, Icons.check);
                          context.pushReplacementNamed(EncuestasRecibidasScreen.name);
                      

                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric( horizontal: 80, vertical: 15),
                      child: const Text(
                      "ENVIAR", 
                        style: TextStyle( color: Colors.white ),
                      )
                    )
                  ),
                ),


            ]
          ),
        ),
      
        ),
    );
  }
}