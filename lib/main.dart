import 'package:flutter/material.dart';
import 'package:psicotec/config/app_route.dart';
import 'package:psicotec/config/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:psicotec/services/encuesta_service.dart';
import 'package:psicotec/services/services.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>AuthService()),
        ChangeNotifierProvider(create: (_)=>UsuarioService()),
        ChangeNotifierProvider(create: (_)=>EncuestaService())
      ],
      child: MainApp(),
      
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme:AppTheme().getTheme(),
      scaffoldMessengerKey: NotificationsService.messengerKey,
    );

    
  }
}
