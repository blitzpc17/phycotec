import 'package:flutter/material.dart';


class NotificationsService {


  static GlobalKey<ScaffoldMessengerState> messengerKey = new GlobalKey<ScaffoldMessengerState>();


  static showSnackbar( String message, Color color, IconData icono ) {

    final snackBar = new SnackBar(
      content: Row(        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icono,color: Colors.white),
          SizedBox(height: 15),
          Text( 
            message, 
            style: TextStyle( 
              color: Colors.white, 
              fontSize: 20)
          ),
        ],
      ),
      backgroundColor: color,
      
      
    );

    messengerKey.currentState!.showSnackBar(snackBar);

  }


}