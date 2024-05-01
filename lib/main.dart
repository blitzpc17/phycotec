import 'package:flutter/material.dart';
import 'package:psicotec/config/app_route.dart';
import 'package:psicotec/config/app_theme.dart';

void main() {
  runApp(const MainApp());
}

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
