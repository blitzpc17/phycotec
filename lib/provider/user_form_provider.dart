import 'package:flutter/material.dart';
import 'package:psicotec/model/estudiante.dart';

class UserFormProvider extends ChangeNotifier {

  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  /*Estudiante estudiante;*/

  UserFormProvider(/* this.estudiante*/);

//borrar porque creo que no es encesario
  updateAvailability( bool value ) {
    print(value);
  //  this.estudiante.available = value;
    notifyListeners();
  }


  bool isValidForm() {

  //  print( estudiante.nombre );

    return formKey.currentState?.validate() ?? false;
  }

}