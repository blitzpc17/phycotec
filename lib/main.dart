import 'package:flutter/material.dart';
import 'package:psicotec/config/app_route.dart';
import 'package:psicotec/config/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:psicotec/services/services.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>AuthService())
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
