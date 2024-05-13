import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:psicotec/model/estudiante.dart';
import 'package:psicotec/provider/user_form_provider.dart';
import 'package:psicotec/screens/screens.dart';
import 'package:psicotec/services/services.dart';
import 'package:psicotec/widgets/widgets.dart';


class RegisterScreen extends StatelessWidget {
  static const name = "register_screen";
  //const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {   

    return ChangeNotifierProvider(
      create: ( _ ) => UserFormProvider(),
      child: _RegistroScreenBody(),
    );
  }
}

class _RegistroScreenBody extends StatelessWidget {

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
          title: const Text('Formulario de registro')
      ),
      body: AuthBackground(
        mostrarLogo: false,
         child: SingleChildScrollView(
          child: Column(
            children: [
    
              const SizedBox( height: 50 ),
    
              CardContainer(
                child: Column(
                  children: [
    
                    const SizedBox( height: 10 ),
                    Text('*Ingresa tus datos personales y da clic en REGISTRAME.', style: Theme.of(context).textTheme.bodyMedium ),
                    const SizedBox( height: 20 ),
                    ChangeNotifierProvider(
                      create: (_)=>UserFormProvider(),
                      child: _RegisterForm()
                    ),
                    
    
                  ],
                )
              ),
    
              const SizedBox( height: 50 ),
            ],
          ),
        )
      
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioService>(context, listen: false);
    final usuarioForm = Provider.of<UserFormProvider>(context);
    Estudiante estudiante = new Estudiante(
      nombre: "", 
      fechaNacimiento: "", 
      edad: "", 
      institucionEducativa: "", 
      escolaridad: "", 
      direccion: "", 
      telefono: "", 
      nombreMadre: "", 
      edadMadre: "", 
      ocupacionMadre: "", 
      escolaridadMadre: "", 
      estadoCivilMadre: "", 
      nombrePadre: "", 
      edadPadre: "", 
      ocupacionPadre: "", 
      escolaridadPadre: "", 
      estadoCivilPadre: "", 
      hermanos: "", 
      email: "", 
      password: "", 
      id: null);

    return Container(
      child: Form(
        key: usuarioForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
             InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.emailAddress, 
              label: "Correo electrónico", 
              hintText: "Correo electrónico", 
              icono: Icons.email_sharp,
              onChanged: (value) => estudiante.email = value,
              validator: ( value ) {

                  String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp  = new RegExp(pattern);
                  
                  return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no luce como un correo';

              },
            ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: true, 
              keyboardType: TextInputType.text, 
              label: "Contraseña", 
              hintText: "*****", 
              icono: Icons.lock_sharp,
              onChanged: ( value ) => estudiante.password = value,
              validator: ( value ) {

                  return ( value != null && value.length >= 6 ) 
                    ? null
                    : 'La contraseña debe de ser de 6 caracteres';                                    
                  
              },
            ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Nombre:", 
              hintText: "Nombre",               
              icono: Icons.person_2_sharp,
              onChanged: ( value ) => estudiante.nombre = value,
              validator: (value) {
                if (value==null || value.isEmpty) {
                  return 'Dato obligatorio.';
                }
                if (value.length < 6) {
                  return 'Al menos 6 carácteres.';
                }
                return null;
              },
            ),
              
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Fecha nacimiento:", 
              hintText: "Fecha nacimiento", 
              errorMessage:"", 
              icono: Icons.calendar_month_sharp,
              onChanged: ( value ) => estudiante.fechaNacimiento = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a date';
                }

                final RegExp dateRegex = RegExp(r'^\d{2}/\d{2}/\d{4}$');
                if (!dateRegex.hasMatch(value)) {
                  return 'Ingrese la fecha en formato dd/mm/yyyy';
                }

                List<String> parts = value.split('/');
                int day = int.parse(parts[0]);
                int month = int.parse(parts[1]);
                int year = int.parse(parts[2]);

                if (day == null || month == null || year == null ||
                    day < 1 || day > 31 || month < 1 || month > 12 || year < 1900) {
                  return 'Please enter a valid date';
                }

                return null;
              },
            ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.number, 
              label: "Edad:", 
              hintText: "Edad", 
              errorMessage:"", 
              icono: Icons.person_3_sharp,
              onChanged: ( value ) => estudiante.edad = value,
              validator: (value) {
                if (value==null || value.isEmpty) {
                  return 'Dato obligatorio.';
                }
                if (int.parse(value)< 10) {
                  return 'Ingrese una edad válida.';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Institución educativa:", 
              hintText: "Institución educativa", 
              errorMessage:"", 
              icono: Icons.school_sharp,
              onChanged: ( value ) => estudiante.institucionEducativa = value,
              validator: (value) {
                if (value==null || value.isEmpty) {
                  return 'Dato obligatorio.';
                }
                if (value.length < 6) {
                  return 'Al menos 6 carácteres.';
                }
                return null;
              },
              ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Escolaridad:", 
              hintText: "Escolaridad", 
              errorMessage:"", 
              icono: Icons.school_rounded,
              onChanged: ( value ) => estudiante.escolaridad = value,
              validator: (value) {
                if (value==null || value.isEmpty) {
                  return 'Dato obligatorio.';
                }
                if (value.length < 6) {
                  return 'Al menos 6 carácteres.';
                }
                return null;
              },
              ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Dirección:", 
              hintText: "Dirección", 
              errorMessage:"", 
              icono: Icons.streetview_sharp,
              onChanged: ( value ) => estudiante.direccion = value,
              validator: (value) {
                if (value==null || value.isEmpty) {
                  return 'Dato obligatorio.';
                }
                if (value.length < 6) {
                  return 'Al menos 6 carácteres.';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.number, 
              label: "Télefono:", 
              hintText: "Télefono", 
              errorMessage:"", 
              icono: Icons.phone_android_sharp,
              onChanged: ( value ) => estudiante.telefono = value,
              validator: (value) {
                if (value==null || value.isEmpty) {
                  return 'Dato obligatorio.';
                }
                if (value.length != 10) {
                  return 'Deben ser 10 carácteres.';
                }
                return null;
              },
              ),
            const SizedBox(height: 10),
            const Center(child: Text("Datos familiares", style: TextStyle(fontWeight: FontWeight.bold))),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child:  const Text("*Datos de la madre", style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Nombre de la madre", 
              hintText: "Nombre de la madre", 
              errorMessage:"", 
              icono: Icons.woman_2_sharp,
              onChanged: ( value ) => estudiante.nombreMadre = value),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.number, 
              label: "Edad:", 
              hintText: "Edad", 
              errorMessage:"", 
              icono: Icons.person_3_sharp, 
              onChanged: ( value ) => estudiante.edad = value,
              ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Ocupación:", 
              hintText: "Ocupación", 
              errorMessage:"", 
              icono: Icons.work_history_sharp,
              onChanged: ( value ) => estudiante.ocupacionMadre = value,
              ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Escolaridad:", 
              hintText: "Escolaridad", 
              errorMessage:"", 
              icono: Icons.school_rounded,
              onChanged: ( value ) => estudiante.escolaridadMadre = value,
              ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Estado civil:", 
              hintText: "Estado civil", 
              errorMessage:"", 
              icono: Icons.accessible_sharp,
              onChanged: ( value ) => estudiante.estadoCivilMadre = value,
              ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child:  const Text("*Datos del padre", style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 10),
             InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Nombre del Padre", 
              hintText: "Nombre del Padre", 
              errorMessage:"", 
              icono: Icons.man_3_sharp,
              onChanged: ( value ) => estudiante.nombrePadre = value,
              ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.number, 
              label: "Edad:", 
              hintText: "Edad", 
              errorMessage:"", 
              icono: Icons.person_3_sharp,
              onChanged: ( value ) => estudiante.edadPadre = value),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Ocupación:", 
              hintText: "Ocupación", 
              errorMessage:"", 
              icono: Icons.work_history_sharp,
              onChanged: ( value ) => estudiante.ocupacionPadre = value,
              ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Escolaridad:", 
              hintText: "Escolaridad", 
              errorMessage:"", 
              icono: Icons.school_rounded,
              onChanged: ( value ) => estudiante.escolaridadPadre = value,
              ),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Estado civil:", 
              hintText: "Estado civil", 
              errorMessage:"", 
              icono: Icons.accessible_sharp,
              onChanged: ( value ) => estudiante.estadoCivilPadre = value),
            const SizedBox(height: 10),
              InputForm(
                autocorrect: false, 
                obscureText: false, 
                keyboardType: TextInputType.text, 
                label: "¿Tienes hermanos, edad, relación?", 
                hintText: "Cuentanos...", 
                errorMessage:"", 
                icono: Icons.child_care_sharp,
                noLineas: 10,
                onChanged: ( value ) => estudiante.hermanos = value,
              ),
              const SizedBox(height: 30),
                    MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      disabledColor: Colors.grey,
                      elevation: 0,
                      color: Colors.blueAccent,
                      onPressed: usuarioService.isSaving
                      ? null 
                      : () async {
                        if(!usuarioForm.isValidForm()) return; 
                       
                        await usuarioService.saveOrCreateEstudiante(estudiante);
                        NotificationsService.showSnackbar("Bienvenido!!!", Colors.green.shade400, Icons.check);
                        context.pushReplacementNamed(HomeScreen.name);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric( horizontal: 80, vertical: 15),
                        child: const Text(                 
                        "Registrarme", 
                          style: TextStyle( color: Colors.white ),
                        )
                      )
                    ),    
              
       
            

          ],
        ),

      ),
    );
  }
}