

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_app2/src/colors/colors.dart';
import 'package:flutter_app2/src/widgets/back_button.dart';

 
 
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle (
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );


    return Scaffold(
        body: Column(
          children: [

            Stack(
              children :[
                Image(
                  width: double.infinity,
                  height: 100.0,
                  fit:BoxFit.cover,
                  image: NetworkImage ('https://images.unsplash.com/photo-1560582861-45078880e48e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1868&q=80')
                ),

                Container(
                  margin: EdgeInsets.only(top:40.0),
                  child: backButton (context, Colors.white)
                )


              ],
            ),

            Transform.translate(
            offset: Offset(0.0, -20.0),
              child:  Container(
                width: double.infinity,
                height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center (
                  child: Column(
                    children : [
                      Text ("Bienvenido de Nuevo" , style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize:30.0


                      )),

                      Text ("Registrarse con su cuenta" , style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize:15.0
                        

                      )),
                      _emailInput(),
                      _passwordInput(),
                      _buttonLogin(context),


                      Container (

                        margin: EdgeInsets.only(top:20.0),
                        child: GestureDetector(
                          onDoubleTap: () {
                            Navigator.pushNamed(context,'forgot-password');

                          },
                        
                          child: Text('Olvidaste tu contraseña?',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0
                        )),
                        ),
                      ),
    

    
                     Container (
                        margin: EdgeInsets.only(top:20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(" No Tienes una cuenta?",style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                             fontSize: 15.0
                            )),

                            GestureDetector( 
                             onTap:(){
                               Navigator.pushNamed(context, 'sign-up');
                                },

                               child: Container (
                                margin: EdgeInsets.symmetric(horizontal: 10.0) ,
                                child: Text('Registrarse aqui',style: TextStyle(
                                color: Theme.of(context).buttonColor,
                                fontWeight: FontWeight.w400,
                               fontSize: 15.0
                               ))
                               ,
                               ),
                               
                              ),
                        
                          ],
                        ),
                       
                       ),
                       
                    ],


              ),
            )



          
            ),
              ),
        )
          ]
        )
        );
          
      
    
  }
}

Widget _emailInput () {
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
        hintText: 'Email',
        border: OutlineInputBorder (
          borderSide: BorderSide.none
        ),


      ),


    ),
  );

}
 
Widget _passwordInput (){
  return Container(
    margin: EdgeInsets.only(top:15.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      obscureText:true ,
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder (
          borderSide: BorderSide.none
        )


      ),


    ),
  );

}

Widget _buttonLogin (BuildContext context){

    return Container (
                width: 350.0,
                height: 35.0,
                margin: EdgeInsets.only(top:20.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context ,'tabs');
                  },
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color:Theme.of(context).buttonColor,
                  child: Text ('Log In',style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0
                    
                  ))
                ),
            );


}