import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier{
  final String _baseUrl = 'identitytoolkit.googleapis.com';
  final String _firebaseToken = 'AIzaSyCe9OeUJjv_yc1MA8kbT4BpsbUUA9abYsc';
  late String? emailUsuario;
  final storage = new FlutterSecureStorage();

  Future<String?>createUser(String email, String password) async {
    final Map<String, dynamic>authData = {
      'email': email,
      'password':password
    };

    final url = Uri.https(_baseUrl, '/v1/accounts:signUp',{
      'key': _firebaseToken
    });

    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic>decodedResp = json.decode(resp.body);


    if ( decodedResp.containsKey('idToken') ) {
        // Token hay que guardarlo en un lugar seguro
        await storage.write(key: 'token', value: decodedResp['idToken']);
        // decodedResp['idToken'];
        return null;
    } else {
      return decodedResp['error']['message'];
    }

  }

   Future<String?> login( String email, String password ) async {

    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true
    };

    final url = Uri.https(_baseUrl, '/v1/accounts:signInWithPassword', {
      'key': _firebaseToken
    });

    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodedResp = json.decode( resp.body );

    print(decodedResp);
    //return "Error en el login";

    if ( decodedResp.containsKey('idToken') ) {
        // Token hay que guardarlo en un lugar seguro
        // decodedResp['idToken'];
        await storage.write(key: 'token', value: decodedResp['idToken']);
        await storage.write(key: 'email', value: email);
        this.emailUsuario = email;
        return null;
    } else {
      return decodedResp['error']['message'];
    }

  }


 Future logout() async {
    await storage.delete(key: 'token');
    return;
  }

  Future<String> readToken() async {
    this.emailUsuario = await storage.read(key:'email');
    return await storage.read(key: 'token') ?? '';
  }




}