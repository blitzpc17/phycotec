import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:psicotec/provider/login_form_provider.dart';
import 'package:psicotec/screens/screens.dart';
import 'package:psicotec/services/services.dart';
import 'package:psicotec/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  static const name = "register_screen";
  const RegisterScreen({super.key});

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
                      create: (_)=>LoginFormProvider(),
                      child: _RegisterForm()
                    )
                 
                    

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

    final loginForm = Provider.of<LoginFormProvider>(context);


    return Container(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
             InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.emailAddress, 
              label: "Correo electrónico", 
              hintText: "Correo electrónico", 
              errorMessage: "Campo obligatorio.", 
              icono: Icons.email_sharp,
              onChanged: (value) => loginForm.email = value,
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
              errorMessage: "Campo obligatorio.", 
              icono: Icons.lock_sharp,
              onChanged: ( value ) => loginForm.password = value,
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
              errorMessage:"", 
              icono: Icons.person_2_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Fecha nacimiento:", 
              hintText: "Fecha nacimiento", 
              errorMessage:"", 
              icono: Icons.calendar_month_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Edad:", 
              hintText: "Edad", 
              errorMessage:"", 
              icono: Icons.person_3_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Institución educativa:", 
              hintText: "Institución educativa", 
              errorMessage:"", 
              icono: Icons.school_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Escolaridad:", 
              hintText: "Escolaridad", 
              errorMessage:"", 
              icono: Icons.school_rounded),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Dirección:", 
              hintText: "Dirección", 
              errorMessage:"", 
              icono: Icons.streetview_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Télefono:", 
              hintText: "Télefono", 
              errorMessage:"", 
              icono: Icons.phone_android_sharp),
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
              icono: Icons.woman_2_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Edad:", 
              hintText: "Edad", 
              errorMessage:"", 
              icono: Icons.person_3_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Ocupación:", 
              hintText: "Ocupación", 
              errorMessage:"", 
              icono: Icons.work_history_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Escolaridad:", 
              hintText: "Escolaridad", 
              errorMessage:"", 
              icono: Icons.school_rounded),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Estado civil:", 
              hintText: "Estado civil", 
              errorMessage:"", 
              icono: Icons.accessible_sharp),
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
              icono: Icons.man_3_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Edad:", 
              hintText: "Edad", 
              errorMessage:"", 
              icono: Icons.person_3_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Ocupación:", 
              hintText: "Ocupación", 
              errorMessage:"", 
              icono: Icons.work_history_sharp),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Escolaridad:", 
              hintText: "Escolaridad", 
              errorMessage:"", 
              icono: Icons.school_rounded),
            const SizedBox(height: 10),
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "Estado civil:", 
              hintText: "Estado civil", 
              errorMessage:"", 
              icono: Icons.accessible_sharp),
            const SizedBox(height: 10),
             InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.text, 
              label: "¿Tienes hermanos, edad, relación?", 
              hintText: "Cuentanos...", 
              errorMessage:"", 
              icono: Icons.child_care_sharp,
              noLineas: 10),
            const SizedBox(height: 30),
             MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.blueAccent,
              child: Container(
                padding: EdgeInsets.symmetric( horizontal: 80, vertical: 15),
                child: Text(
                  loginForm.isLoading?
                  'Espere':
                "Registrarme", 
                  style: TextStyle( color: Colors.white ),
                )
              ),
              onPressed: loginForm.isLoading ? null : () async {
                
                FocusScope.of(context).unfocus();
                final authService = Provider.of<AuthService>(context, listen: false);
                
              //  if( !loginForm.isValidForm() ) return;

                loginForm.isLoading = true;


                // TODO: validar si el login es correcto
                final String? errorMessage = await authService.createUser(loginForm.email, loginForm.password);

                if ( errorMessage == null ) {
                  //Navigator.pushReplacementNamed(context, 'homes');
                  context.pushReplacementNamed(HomeScreen.name);
                } else {
                  // TODO: mostrar error en pantalla
                  print( errorMessage );
                  loginForm.isLoading = false;
                }
              }
            ),
            

          ],
        ),

      ),
    );
  }
}