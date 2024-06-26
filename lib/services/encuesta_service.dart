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
  final List<Validacion> validaciones = [];
  late Encuesta? encuestaSeleccionada;
  late Validacion? validacionSeleccionada;

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

  Future<void> loadEncuestas() async {

    this.isLoading = true;
    notifyListeners();

    this.encuestas.clear();
    
    final url = Uri.https( _baseUrl, 'encuestas.json', {
      'auth': await storage.read(key: 'token') ?? ''
    });
    final resp = await http.get( url );

    final Map<String, dynamic> productsMap = json.decode( resp.body );

    productsMap.forEach((key, value) {
      final tempProduct = Encuesta.fromMap( value );      
      this.encuestas.add( tempProduct );
    });


    final urlVal = Uri.https( _baseUrl, 'validaciones.json', {
      'auth': await storage.read(key: 'token') ?? ''
    });
    final respVal = await http.get( urlVal );
    if(respVal.body!="null"){
    
    final Map<String, dynamic> valdiacionesMap = json.decode( respVal.body );
    valdiacionesMap.forEach((key, value) {
      final tempValidacion = Validacion.fromMap( value );      
      this.validaciones.add( tempValidacion );
    });
    }
   




    this.isLoading = false;
    notifyListeners();
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

    if(this.validaciones.isEmpty){
      this.validacionSeleccionada = null;
      return;
    }

     this.validaciones.forEach((element) { 
      if(element.email == email){
        this.validacionSeleccionada = element;
      }
    });

    if(this.validacionSeleccionada!=null && this.encuestaSeleccionada!=null){
      if(this.validacionSeleccionada!.email != this.encuestaSeleccionada!.email){
        this.validacionSeleccionada = null;
      }
    }
   

    
  }


  /*respeustas psicologa */

   Future<bool> createRespuestaPsicoloca( Validacion objValidacion ) async { 

    final url = Uri.https( _baseUrl, 'validaciones.json',{
      'auth': await storage.read(key: 'token') ?? ''
    });

    final resp = await http.post( url, body: objValidacion.toJson() );

    final decodedData = json.decode( resp.body );

    print(decodedData['name']);


    return true;   
  

  }






}

 