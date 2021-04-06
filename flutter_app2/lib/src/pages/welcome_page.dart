

import 'dart:ui';
import 'package:flutter/material.dart';
//Services
import 'package:flutter/services.dart';
//Commons Widgets
import 'package:flutter_app2/src/widgets/headers_text.dart';

class WelcomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith (
        statusBarColor: Colors.white

      )
   );
    return Scaffold(
      body: Stack (
        children: [
          Container(
            decoration : BoxDecoration(
              image: DecorationImage(
              fit :BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1576091160501-bbe57469278b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80'
                                   
              )
              )
            ),
              child:BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY:1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
           ) , 
           
          ),

          Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal:50.0) ,
                child: headerText('Health Care(HC) : Arterial',Colors.white, FontWeight.bold,50.0),
              ),

          
              
              Container(
                padding: EdgeInsets.symmetric(horizontal:50.0 , vertical: 6.0) ,
                child: Text('Sean todos Bienvenidos a esta Aplicacion', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0
                ) )
              ),
          
              Container (
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top:40.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context ,'login');
                  },
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color:Theme.of(context).accentColor,
                  child: Text ('Log In',style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0
                    
                  ))
                ),
               ),
                    
              

                Container (
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top:20.0),
                child: RaisedButton(
                  onPressed: (){
                  },
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color:Theme.of(context).buttonColor,
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                   children:[ 
                     Image (
                      image: AssetImage('assets/logo.png'),
                      width:20.0,
                      height:20.0,
                     ),
                     
                     
                     Container(
                       margin: EdgeInsets.only (left:10.0),
                     child : Text ('Connect with Facebook',style: TextStyle(//falta hacer la conexion hacia facebook,
                    color: Colors.white,
                    fontSize: 15.0
                     ))
                     ),
                   ],
                  )
                  ),

                )

            ],
          )

        ],
      )
   );
      
    
  }
}



  
