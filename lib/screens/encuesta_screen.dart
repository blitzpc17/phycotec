import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:psicotec/model/models.dart';
import 'package:psicotec/provider/selectState.dart';
import 'package:psicotec/screens/screens.dart';
import 'package:psicotec/services/encuesta_service.dart';
import 'package:psicotec/widgets/input_Form.dart';

class EncuestaScreen extends StatelessWidget {
  static const  name = 'encuesta_screen';  
  const EncuestaScreen({super.key});

  @override
  Widget build(BuildContext context) {

     return ChangeNotifierProvider(
      create: (_)=>SelectState(),
      child: _MainFormularioEncuesta());
  }
}

class _MainFormularioEncuesta extends StatelessWidget {
  const _MainFormularioEncuesta({
    super.key,
  });

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
            const SizedBox(height: 15),
            _EncuestaForm(),
            const SizedBox(height: 35),
    
          ],
        ),
      ),     
    );
  }
}

class _EncuestaForm extends StatelessWidget {

   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   final storage = new FlutterSecureStorage();
   Encuesta objEncuesta = new Encuesta(
    p1:"",
    p2:"",
    p3:"",
    p4:"",
    p5:"",
    p6:"",
    p7:"",
    p8:"",
    p9:"",
    p10:"",
    p11:"",
    p12:"",
    p13:"",
    p14:"",
    p15:"",
    p16:"",
    p17:"",
    p18:"",
    email: ""
   );

  @override
  Widget build(BuildContext context) {

    return Container(
        child: Form(
         // key: selecteds,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.start,          
              children: [
               const Text("*Lea y conteste las siguiente preguntas de forma clara y honestamente posible."),
               const SizedBox(height: 30),
               const Text("MÓTIVO DE LA CONSULTA", style: TextStyle(fontWeight: FontWeight.w700)),
               const SizedBox(height: 10),            
                Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP2,
                        // onChanged: ( value ) => estudiante.hermanos = value,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP2 = newValue!;
                      objEncuesta.p1 = newValue.value.toString();
                    },
                    items: selectState.optionsP2.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
               const SizedBox(height: 10),
               const Text("TÉCNICAS E INSTRUMENTOS PSICOLÓGICOS APLICADOS", style: TextStyle(fontWeight: FontWeight.w700)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP3,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP3 = newValue!;
                      objEncuesta.p2 = newValue.value.toString();
                    },
                    items: selectState.optionsP3.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
               const SizedBox(height: 10),
               const Text("ANTECEDENTES FAMILIARES", style: TextStyle(fontWeight: FontWeight.w700)),
               const SizedBox(height: 10),  
               const Text("¿Padres juntos?", style: TextStyle(fontWeight: FontWeight.w500)),
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP4,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP4 = newValue!;
                       objEncuesta.p3 = newValue.value.toString();
                    },
                    items: selectState.optionsP4.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
                const SizedBox(height: 10),
                const Text("¿Padre fallecido?", style: TextStyle(fontWeight: FontWeight.w500)),
                const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP5,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP5 = newValue!;
                       objEncuesta.p4 = newValue.value.toString();
                    },
                    items: selectState.optionsP5.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
                const SizedBox(height: 10),
                const Text("¿Madre fallecida?", style: TextStyle(fontWeight: FontWeight.w500)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP6,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP6 = newValue!;
                       objEncuesta.p5 = newValue.value.toString();
                    },
                    items: selectState.optionsP6.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
                const SizedBox(height: 10),
                 const Text("¿Conflictos con el padre?", style: TextStyle(fontWeight: FontWeight.w500)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP7,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP7 = newValue!;
                       objEncuesta.p6 = newValue.value.toString();
                    },
                    items: selectState.optionsP7.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
                const SizedBox(height: 10),
               const Text("¿Conflictos con la madre?", style: TextStyle(fontWeight: FontWeight.w700)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP8,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP8 = newValue!;
                       objEncuesta.p7 = newValue.value.toString();
                    },
                    items: selectState.optionsP8.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
                const SizedBox(height: 10),
                const Text("¿Conflictos con otros familiares?", style: TextStyle(fontWeight: FontWeight.w500)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP9,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP9 = newValue!;
                      objEncuesta.p8 = newValue.value.toString();
                    },
                    items: selectState.optionsP9.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
                const SizedBox(height: 10),
               const Text("ACTITUD DE LOS PADRES", style: TextStyle(fontWeight: FontWeight.w700)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP10,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP10 = newValue!;
                       objEncuesta.p9 = newValue.value.toString();
                    },
                    items: selectState.optionsP10.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
               const SizedBox(height: 10),
               const Text("NÚMERO DE LOS HERMANOS", style: TextStyle(fontWeight: FontWeight.w700)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP13,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP13 = newValue!;
                       objEncuesta.p10 = newValue.value.toString();
                    },
                    items: selectState.optionsP13.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
               const SizedBox(height: 10),
               const Text("NÚMERO DE LOS HERMANAS", style: TextStyle(fontWeight: FontWeight.w700)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP14,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP14 = newValue!;
                       objEncuesta.p11 = newValue.value.toString();
                    },
                    items: selectState.optionsP14.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
            const SizedBox(height: 10),   
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.number, 
              label: "Lugar entre hermanos:", 
              hintText: "Qué lugar ocupas entre tus hermanos.", 
              errorMessage:"", 
              icono: Icons.child_care,
              onChanged: (value){
                 objEncuesta.p12 = value.toString();
              }),
            const SizedBox(height: 10),
               const SizedBox(height: 10),
               const Text("RELACIÓN CON LOS HERMANOS", style: TextStyle(fontWeight: FontWeight.w700)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP11,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP11 = newValue!;
                        objEncuesta.p13 = newValue.value.toString();
                    },
                    items: selectState.optionsP11.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
                const SizedBox(height: 10),
               const Text("PROBLEMAS QUE SE DETECTAN EN LA VIDA FAMILIAR", style: TextStyle(fontWeight: FontWeight.w700)),
               const SizedBox(height: 10),  
               Consumer<SelectState>(
                  builder: (context, selectState, child){
                    return DropdownButton<Option>(
                      value: selectState.selectedOptionP12,
                      onChanged: (Option? newValue) {
                      selectState.selectedOptionP12 = newValue!;
                        objEncuesta.p14 = newValue.value.toString();
                    },
                    items: selectState.optionsP12.map<DropdownMenuItem<Option>>((Option option) {
                      return DropdownMenuItem<Option>(
                        value: option,
                        child: Text(option.label),
                      );
                    }).toList(),
                    );
                }),
                const SizedBox(height: 10),  
                InputForm(
                  autocorrect: false, 
                  obscureText: false, 
                  keyboardType: TextInputType.text, 
                  label: "¿Con quién vive actualmente?", 
                  hintText: "Cuentanos...", 
                  errorMessage:"", 
                  icono: Icons.child_care_sharp,
                  noLineas: 10,
                  onChanged: (value){
                      objEncuesta.p15 = value.toString();
                  }),
                  const SizedBox(height: 10),  
                 InputForm(
                  autocorrect: false, 
                  obscureText: false, 
                  keyboardType: TextInputType.text, 
                  label: "¿PADECIMIENTO ACTUAL?", 
                  hintText: "Inicio, curso, tendencia, decadentes, agravantes, sintomas clave, sintomas actuales.", 
                  errorMessage:"", 
                  icono: Icons.child_care_sharp,
                  noLineas: 10,
                  onChanged: (value) {
                      objEncuesta.p16 = value.toString();
                  },
                  ),
                  const SizedBox(height: 10),  
                InputForm(
                  autocorrect: false, 
                  obscureText: false, 
                  keyboardType: TextInputType.text, 
                  label: "¿ANTECEDENTES DEL PACIENTE?", 
                  hintText: "Escribe a detalle", 
                  errorMessage:"", 
                  icono: Icons.child_care_sharp,
                  noLineas: 10,
                  onChanged: (value){
                      objEncuesta.p17 = value.toString();
                  },
                  ),
               const SizedBox(height: 30),
                Center(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    disabledColor: Colors.grey,
                    elevation: 0,
                    color: Colors.blueAccent,
                    onPressed: /*!encuestaForm.isValidForm()?null:*/ () async {
                     // context.push('/fin');
                      final email = await storage.read(key: 'email') ?? '';
                      objEncuesta.email = email;
                      final encuestaservice = Provider.of<EncuestaService>(context, listen: false);
                    
                      encuestaservice.saveOrCreateEncuesta(objEncuesta);
                      context.pushReplacementNamed(MensajeEnviadoScreen.name);

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

            
            
              ],
            ),
          )
          
          ),

    );
  }
}