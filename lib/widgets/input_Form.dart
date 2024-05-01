import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  //const InputForm({super.key});
  final bool autocorrect;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String label;
  final String hintText;
  final String errorMessage;
  final IconData icono;

  const InputForm({
    super.key, 
    required this.autocorrect, 
    required this.obscureText, 
    required this.keyboardType, 
    required this.label, 
    required this.hintText, 
    required this.errorMessage, 
    required this.icono,
    this.onChanged, 
    this.validator, 
   });
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: autocorrect,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      decoration: _InputFormDecoration(label, hintText, icono)

    );
  }

  InputDecoration _InputFormDecoration(String labelText, String hintText, IconData prefixIcon ){
    
      final borde = OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(10)
      );

      return InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.blueAccent),
        hintText: hintText,
        prefixIcon: Icon(prefixIcon, color: Colors.blueAccent),
        enabledBorder: borde,
        focusedBorder: borde.copyWith(
          borderSide: const BorderSide(color: Colors.lightBlueAccent)
        )

      );
  }



}