import 'package:go_router/go_router.dart';
import 'package:psicotec/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path:'/',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen()),

  GoRoute(
    path:'/register',
    name:RegisterScreen.name,
    builder: (context, state) => const RegisterScreen()),

  GoRoute(
    path:'/homes',
    name:HomeScreen.name,
    builder: (context, state) => const HomeScreen()),

  GoRoute(
    path:'/encuesta',
    name:EncuestaScreen.name,
    builder: (context, state) => const EncuestaScreen()),


  GoRoute(
    path:'/fin',
    name:MensajeEnviadoScreen.name,
    builder: (context, state) => const MensajeEnviadoScreen()),

  

]);