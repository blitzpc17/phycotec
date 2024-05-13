import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:psicotec/model/estudiante.dart';


class UsuarioService extends ChangeNotifier {

  final String _baseUrl = 'prueba23-edf7e-default-rtdb.firebaseio.com';
  final String _baseUrlAuth = 'identitytoolkit.googleapis.com';
  final String _firebaseToken = 'AIzaSyCe9OeUJjv_yc1MA8kbT4BpsbUUA9abYsc';
  final List<Estudiante> estudiantes = [];
  final storage = new FlutterSecureStorage();

  File? newPictureFile;

  bool isLoading = true;
  bool isSaving = false;

  UsuarioService() {
    //this.loadEstudiantes();
  }

  Future saveOrCreateEstudiante( Estudiante estudiante ) async {

    isSaving = true;
    notifyListeners();

    if ( estudiante.id == null ) {
      // Es necesario crear
      await this.createEstudiante( estudiante );
    } else {
      // Actualizar
      await this.updateEstudiante( estudiante );
    }

    isSaving = false;
    notifyListeners();

  }
  

  Future<String> updateEstudiante( Estudiante estudiante ) async {

    final url = Uri.https( _baseUrl, 'estudiante/${ estudiante.id }.json', {
      'auth': await storage.read(key: 'token') ?? ''
    });

    final resp = await http.put( url, body: estudiante.toJson() );
    final decodedData = resp.body;

    //TODO: Actualizar el listado de productos
    final index = this.estudiantes.indexWhere((element) => element.id == estudiante.id );
    this.estudiantes[index] = estudiante;

    return estudiante.id!;

  }

  Future<String> createEstudiante( Estudiante estudiante ) async {

    final url = Uri.https(_baseUrlAuth, '/v1/accounts:signUp',{
      'key': _firebaseToken
    });

    final Map<String, dynamic> authData = {
      'email': estudiante.email,
      'password': estudiante.password,
      'returnSecureToken': true
    };

    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic>decodedResp = json.decode(resp.body);


    if ( decodedResp.containsKey('idToken') ) {
        // Token hay que guardarlo en un lugar seguro
        await storage.write(key: 'token', value: decodedResp['idToken']);

       

        final url = Uri.https( _baseUrl, 'estudiantes.json',{
          'auth': decodedResp['idToken']
        });

        final resp = await http.post( url, body: estudiante.toJson() );
        final decodedData = json.decode( resp.body );
        estudiante.id = decodedData['name'];

        await storage.write(key: 'email', value: estudiante.email);

        return estudiante.id!;


    } else {
      return decodedResp['error']['message'];
    }


   
  

  }

}

 