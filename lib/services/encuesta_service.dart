import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:psicotec/model/models.dart';


class EncuestaService extends ChangeNotifier {

  final String _baseUrl = 'prueba23-edf7e-default-rtdb.firebaseio.com';
  final storage = new FlutterSecureStorage();
  final List<Encuesta> encuestas = [];
  late Encuesta? encuestaSeleccionada;

  File? newPictureFile;

  bool isLoading = true;
  bool isSaving = false;



  Future saveOrCreateEncuesta( Encuesta obj ) async {

    isSaving = true;
    notifyListeners();

    await this.createEncuesta( obj );

    isSaving = false;
    notifyListeners();

  }
  


  Future<bool> createEncuesta( Encuesta objEncuesta ) async { 

    final url = Uri.https( _baseUrl, 'encuestas.json',{
      'auth': await storage.read(key: 'token') ?? ''
    });

    final resp = await http.post( url, body: objEncuesta.toJson() );

    final decodedData = json.decode( resp.body );

    print(decodedData['name']);


    return true;   
  

  }

  Future<List<Encuesta>> loadEncuestas() async {

    this.isLoading = true;
    notifyListeners();
    
    final url = Uri.https( _baseUrl, 'encuestas.json', {
      'auth': await storage.read(key: 'token') ?? ''
    });
    final resp = await http.get( url );

    final Map<String, dynamic> productsMap = json.decode( resp.body );

    productsMap.forEach((key, value) {
      final tempProduct = Encuesta.fromMap( value );      
      this.encuestas.add( tempProduct );
    });


    this.isLoading = false;
    notifyListeners();
    print(this.encuestas);
    return this.encuestas;
  }


  Future<void> obtenerEncuestaByEmail(String email) async {
    if(this.encuestas.isEmpty){
      this.encuestaSeleccionada = null;
      return; 
    };
    this.encuestas.forEach((element) { 
      if(element.email == email){
        this.encuestaSeleccionada = element;
      }
    });
  }

}

 