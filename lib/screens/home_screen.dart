import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:psicotec/screens/screens.dart';
import 'package:psicotec/services/services.dart';

class HomeScreen extends StatelessWidget {
  static const  name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final authservice = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      appBar: AppBar(        
        title:const Center(child: Text("PSICOTEC")),
        leading: IconButton(
          icon: Icon(Icons.login_outlined),
          onPressed: (){
            authservice.logout();
            context.pushReplacementNamed(LoginScreen.name);
          },
        ),
      ),
      body:
      Column(
        children: [
          const SizedBox(height: 30), 
          Stack(
            children: [
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,  
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      image: const DecorationImage(
                      image: AssetImage('assets/card_image_encuesta.jpg'), // URL de la imagen de fondo
                      fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black87.withOpacity(0.25),
                      //decoration: ,
                      height: 200,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                          'Realiza tu encuesta',
                            style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              //context.push('/encuesta');
                              context.pushNamed(EncuestaScreen.name);
                            },
                            child: const Icon(Icons.send),
                          ),
                        ],
                      ),
                    )
                    
                  ],
                ),
                        ),
              
                ]
              ),
            ),

             

            ]
            
           
          ),
      
        ],
      )
      
    );
  }
}