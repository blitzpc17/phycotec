import 'package:go_router/go_router.dart';
import 'package:psicotec/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path:'/',
    name:LoginScreen.name,
    builder: (context, state) => const LoginScreen()),

  GoRoute(
    path:'/register',
    name:RegisterScreen.name,
    builder: (context, state) => const RegisterScreen()),

  GoRoute(
    path:'/home',
    name:HomeScreen.name,
    builder: (context, state) => const HomeScreen()),

  

]);