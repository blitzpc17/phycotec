import 'package:flutter/material.dart';
import 'package:psicotec/config/app_route.dart';
import 'package:psicotec/config/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}
/*
class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>)
      ],
      
    );
  }
}*/

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme:AppTheme().getTheme()
    );

    
  }
}
