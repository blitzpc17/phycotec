import 'dart:ui';

import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  
  final Widget child;

  const AuthBackground({
    Key? key, 
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [

            _PurpleBox(),
            Container(
              color: Colors.black87.withOpacity(0.085),
            ),

            _HeaderIcon(),            

            this.child,

          ],
        ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only( top: 30 ),
        child: const Icon( Icons.person_pin, color: Colors.white, size: 100 ),
      ),
    );
  }
}


class _PurpleBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.65,
      decoration: _purpleBackground(),
      child: const Stack(
        children: [
          
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => const BoxDecoration(   
    image: DecorationImage(
      image: AssetImage('assets/background.jpg'),
      fit: BoxFit.cover,
    ),
  );
}
