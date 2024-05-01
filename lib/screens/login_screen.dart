import 'package:flutter/material.dart';
import 'package:psicotec/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(child: SingleChildScrollView(
        child: Column(
          children: [
             const SizedBox( height: 250 ),              
              CardContainer(
                child: Column(
                  children: [

                    const SizedBox( height: 10 ),
                    Text('Bienvenido', style: Theme.of(context).textTheme.titleLarge ),
                    Text("Iniciar sesión", style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox( height: 30 ),
                    _LoginForm(),
                    const SizedBox(height: 50),
                    TextButton(
                      onPressed: (){},//() => Navigator.pushReplacementNamed(context, 'register'), 
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all( Colors.indigo.withOpacity(0.1)),
                        shape: MaterialStateProperty.all( StadiumBorder() )
                      ),
                      child: const Text('¿No tienes cuenta?, Registrate aquí.', style: TextStyle( fontSize: 12, color: Colors.black87 ),)
                    ),                

                  ],
                )
              ),
          
          ],
        ),
      )),
    );
  }
}

class _LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  //  final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
        child: Column(
          children: [
            InputForm(
              autocorrect: false, 
              obscureText: false, 
              keyboardType: TextInputType.emailAddress, 
              label: "Correo electrónico", 
              hintText: "Correo electrónico", 
              errorMessage: "Campo obligatorio.", 
              icono: Icons.email_sharp
            ),
            const SizedBox(height: 30),
            InputForm(
              autocorrect: false, 
              obscureText: true, 
              keyboardType: TextInputType.text, 
              label: "Contraseña", 
              hintText: "*****", 
              errorMessage: "Campo obligatorio.", 
              icono: Icons.lock_sharp
            ),
            const SizedBox(height: 30),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.blueAccent,
              child: Container(
                padding: EdgeInsets.symmetric( horizontal: 80, vertical: 15),
                child: Text(
                 /* loginForm.isLoading 
                    ? 'Espere'
                    : 'Ingresar',*/"Iniciar sesión", 
                  style: TextStyle( color: Colors.white ),
                )
              ),
              onPressed: /*loginForm.isLoading ? null : () async {
                
                FocusScope.of(context).unfocus();
                final authService = Provider.of<AuthService>(context, listen: false);
                
                if( !loginForm.isValidForm() ) return;

                loginForm.isLoading = true;


                // TODO: validar si el login es correcto
                final String? errorMessage = await authService.login(loginForm.email, loginForm.password);

                if ( errorMessage == null ) {
                  Navigator.pushReplacementNamed(context, 'home');
                } else {
                  // TODO: mostrar error en pantalla
                  // print( errorMessage );
                  NotificationsService.showSnackbar(errorMessage);
                  loginForm.isLoading = false;
                }
              }*/(){}
            ),
          ],

        ),
      ),
    );
  }
}
