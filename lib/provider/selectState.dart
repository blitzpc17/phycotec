import 'package:flutter/material.dart';
import 'package:psicotec/model/Option.dart';

class SelectState extends ChangeNotifier{

  final List<Option> _lstP2 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Ansiedad', value: '1'),
    Option(label: 'Depresión', value: '2'),
    Option(label: 'Angustia', value: '3'),
    Option(label: 'Autoestima baja', value: '4'),
    Option(label: 'Indiferencia', value: '5'),
    Option(label: 'Confusión', value: '6'),
    Option(label: 'Descontrol', value: '7'),
    Option(label: 'Desorientación', value: '8'),
    Option(label: 'Incoherencia', value: '9'),
    Option(label: 'Sobrevaloración', value: '10'),
  ];

  Option _selectedP2 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP2 => _lstP2;
  Option get selectedOptionP2 => _selectedP2;

  set selectedOptionP2(Option value) {
    _selectedP2 = value;
    notifyListeners();
  }


  final List<Option> _lstP3 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Observación', value: '1'),
    Option(label: 'Entrevista', value: '2'),
    Option(label: 'Pruebas Psicólogicas', value: '3'),    
  ];

  Option _selectedP3 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP3 => _lstP3;
  Option get selectedOptionP3 => _selectedP3;

  set selectedOptionP3(Option value) {
    _selectedP3 = value;
    notifyListeners();
  }



   final List<Option> _lstP4 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Sí', value: '1'),
    Option(label: 'No', value: '2'),  
  ];

  Option _selectedP4 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP4 => _lstP4;
  Option get selectedOptionP4 => _selectedP4;

  set selectedOptionP4(Option value) {
    _selectedP4 = value;
    notifyListeners();
  }




  final List<Option> _lstP5 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Sí', value: '1'),
    Option(label: 'No', value: '2'),  
  ];

  Option _selectedP5 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP5 => _lstP5;
  Option get selectedOptionP5 => _selectedP5;

  set selectedOptionP5(Option value) {
    _selectedP5 = value;
    notifyListeners();
  }




  final List<Option> _lstP6 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Sí', value: '1'),
    Option(label: 'No', value: '2'),  
  ];

  Option _selectedP6 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP6 => _lstP6;
  Option get selectedOptionP6 => _selectedP6;

  set selectedOptionP6(Option value) {
    _selectedP6 = value;
    notifyListeners();
  }



  final List<Option> _lstP7 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Sí', value: '1'),
    Option(label: 'No', value: '2'),  
  ];

  Option _selectedP7 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP7 => _lstP7;
  Option get selectedOptionP7 => _selectedP7;

  set selectedOptionP7(Option value) {
    _selectedP7 = value;
    notifyListeners();
  }



  final List<Option> _lstP8 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Sí', value: '1'),
    Option(label: 'No', value: '2'),  
  ];

  Option _selectedP8 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP8 => _lstP8;
  Option get selectedOptionP8 => _selectedP8;

  set selectedOptionP8(Option value) {
    _selectedP8 = value;
    notifyListeners();
  }



  final List<Option> _lstP9 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Sí', value: '1'),
    Option(label: 'No', value: '2'),  
  ];

  Option _selectedP9 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP9 => _lstP9;
  Option get selectedOptionP9 => _selectedP9;

  set selectedOptionP9(Option value) {
    _selectedP9 = value;
    notifyListeners();
  }


   final List<Option> _lstP10 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Afectuosa', value: '1'),
    Option(label: 'Sobreprotectora', value: '2'),  
    Option(label: 'Indiferente', value: '3'),  
    Option(label: 'Hostil', value: '4'),  
    Option(label: 'Relación inexistente', value: '5'),  
  ];

  Option _selectedP10 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP10 => _lstP10;
  Option get selectedOptionP10 => _selectedP10;

  set selectedOptionP10(Option value) {
    _selectedP10 = value;
    notifyListeners();
  }



  final  List<Option> _lstP11 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Afectuosa', value: '1'),
    Option(label: 'Sobreprotectora', value: '2'),
    Option(label: 'Apática', value: '3'),
    Option(label: 'Agresiva', value: '4'),
    Option(label: 'Inexistente', value: '5'),
  ];

  Option _selectedP11 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP11 => _lstP11;
  Option get selectedOptionP11 => _selectedP11;

  set selectedOptionP11(Option value) {
    _selectedP11 = value;
    notifyListeners();
  }



  final List<Option> _lstP12 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'Alcoholismo', value: '1'),
    Option(label: 'Drogadición', value: '2'),
    Option(label: 'Violencia', value: '3'),
    Option(label: 'Abandono de hogar', value: '4'),
    Option(label: 'Alguno enfermedad crónica', value: '5'),
  ];

  Option _selectedP12 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP12 => _lstP12;
  Option get selectedOptionP12 => _selectedP12;

  set selectedOptionP12(Option value) {
    _selectedP12 = value;
    notifyListeners();
  }

  //no hermanos
  final List<Option> _lstP13 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'No tengo', value: '0'),
    Option(label: '1', value: '1'),
    Option(label: '2', value: '2'),  
    Option(label: '3', value: '3'),  
    Option(label: '4', value: '4'),  
    Option(label: '5', value: '5'),  
    Option(label: '6', value: '6'),  
    Option(label: '7', value: '7'),  
    Option(label: '8', value: '8'),  
    Option(label: '9', value: '9'),  
    Option(label: '10', value: '10'),  
  ];

  Option _selectedP13 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP13 => _lstP13;
  Option get selectedOptionP13 => _selectedP13;

  set selectedOptionP13(Option value) {
    _selectedP13 = value;
    notifyListeners();
  }

  //numero hermanas
  final List<Option> _lstP14 = [
    Option(label: 'Seleccione una opción', value: '-1'),
    Option(label: 'No tengo', value: '0'),
    Option(label: '1', value: '1'),
    Option(label: '2', value: '2'),  
    Option(label: '3', value: '3'),  
    Option(label: '4', value: '4'),  
    Option(label: '5', value: '5'),  
    Option(label: '6', value: '6'),  
    Option(label: '7', value: '7'),  
    Option(label: '8', value: '8'),  
    Option(label: '9', value: '9'),  
    Option(label: '10', value: '10'),   
  ];

  Option _selectedP14 = Option(label: 'Seleccione una opción', value: '-1');

  List<Option> get optionsP14 => _lstP14;
  Option get selectedOptionP14 => _selectedP14;

  set selectedOptionP14(Option value) {
    _selectedP14 = value;
    notifyListeners();
  }


}