import 'package:flutter/material.dart';

class EncuestaFormProvider extends ChangeNotifier {

  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  EncuestaFormProvider();


  updateAvailability( bool value ) {
    notifyListeners();
  }


  bool isValidForm() {

    return formKey.currentState?.validate() ?? false;
  }

}