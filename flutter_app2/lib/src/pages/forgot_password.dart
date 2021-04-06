

import 'package:flutter/material.dart';
import 'package:flutter_app2/src/widgets/back_button.dart';
//Commons Widgets
import 'package:flutter_app2/src/widgets/headers_text.dart';


 
 
class ForgotPassword  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder:(BuildContext context) {
            return backButton(context, Colors.black);
          }
        ),
      ),
      body: Center
       (
        child: Container (
          padding: EdgeInsets.all(30.0) ,
          child: Column(
          children: [
            headerText('Olvidaste tu contraseña?',Theme.of(context).primaryColor, FontWeight.bold, 30.0 )

         ,
            Container(
              padding: EdgeInsets.all(10.0),             

            child:  Text('Favor de ingresar su email, recibiras un link para crear una nueva contraseña via email',
               textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
            
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0 ))
          ),
          _emailInput (),
          _sendButton(context),
          
         
          ],
        ),
      ),

    )
    );
      
     
    
  }
}
Widget _emailInput(){
  return Container(
    margin: EdgeInsets.only(top:10.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Ingrese su email',
        border: OutlineInputBorder (
          borderSide: BorderSide.none
        ),
      )
    )
  
  );
}

Widget _sendButton(BuildContext context){
return Container(
  width: 370.0,
  height:45.0,
  margin:EdgeInsets.only(top: 40.0),
  child:RaisedButton(
    onPressed: (){
      _showAlerta(context);

    },
    color: Theme.of(context).buttonColor,//acentcolor es el naranjo
    child: Text(
      'Enviar',
      style: TextStyle(color:Colors.white,fontSize:17.0 ),
    ),
    shape: 
    RoundedRectangleBorder (borderRadius: BorderRadius.circular(20.0)),

  )

);
}


void _showAlerta(BuildContext context){

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
        content: Container (
          height: 400,
          child: Column(

            children: [
              Image(
                image:AssetImage('assets/candado1.png'),
                width: 130,
                height: 130,
              ),
            Container (
              margin: EdgeInsets.all(15.0),
              child: 
              headerText('Tu nueva Contraseña ha sido enviada',Theme.of(context).primaryColor,FontWeight.bold,20.0)
              //Text('Tu nueva Contraseña ha sido enviada',
                //style: TextStyle(
                  //color: Theme.of(context).primaryColor,
                  //fontWeight: FontWeight.bold,
                  //fontSize: 20.0)),

              ),
              Container (
              margin: EdgeInsets.all(15.0),
              child: Text("Te enviaran un email con tu nueva contraseña a la brevedad",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0)),

              ),

          _doneButton(context)
              
            ],
          ),
        ),


      
      );
  }
  );
 
  


}

Widget _doneButton(BuildContext context){
return Container (
  width: 370.0,
  height:45.0,
  margin:EdgeInsets.only(top: 40.0),
  child:RaisedButton(
    onPressed: (){
    Navigator.pushNamed(context, 'login');

    },
    color: Theme.of(context).accentColor,
    child: Text(
      'Listo',
      style: TextStyle(color:Colors.white,fontSize:17.0 ),
    ),
    shape: 
    RoundedRectangleBorder (borderRadius: BorderRadius.circular(20.0)),

  ));

}