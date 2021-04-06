import 'package:flutter/material.dart';

//Colores
import 'package:flutter_app2/src/colors/colors.dart';

//BackButtons
import 'package:flutter_app2/src/widgets/back_button.dart';
import 'package:flutter_app2/src/widgets/headers_text.dart';


 
 
class SignUpPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Builder(builder:(BuildContext context){
        return backButton(context,Colors.black);


      }),
       ),
      body:Center (
      child:Container(
      padding:EdgeInsets.all(10),
      child: Column(
        children: [
          headerText('Crease una Cuenta',Theme.of(context).primaryColor,FontWeight.bold,30.0),
          

                            _NombreInput(context),
                            _emailInput(context),
                            _phoneInput(context),
                            _edadInput(context),// se debe comparar la edad de este formulario con la presion sistole del otro formulario y luego de eso se le debe entregar informacion adecuada al usuario con respecto a eso
                            _passwordInput(context),
                            _signUpButton(context),
                        Container(
                              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                               child: Text(

                                  'Al clickear estas aqui muestras que estas de acuerdo con los terminos de condiciones ',
                               textAlign:TextAlign.center,
                                style:TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize:13.0 ))

                              ),
                              Container (
                                  margin: EdgeInsets.only(top:0.0),
                                    child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(" Registre su presion Arterial ",style: TextStyle(
                                    color: gris,
                                      fontWeight: FontWeight.w500,
                                       fontSize: 15.0
                                      )),

                                 GestureDetector( 
                                   onTap:(){
                                       Navigator.pushNamed(context, 'register_presion');
                                            },

                                    child: Container (
                                    margin: EdgeInsets.symmetric(horizontal: 0.0) ,
                                    child: Text('Registrarse aqui',style: TextStyle(
                                    color: Theme.of(context).buttonColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0
                               )),
                               )





                      
                            )
                          ]
                            ),

                      )
                               ],
                            
                              
                               ),




                            )








        
      )
      );
      
    
    
  }
}

Widget _NombreInput (BuildContext context){

return Container (
  margin: EdgeInsets.only(top:10.0),
  padding: EdgeInsets.only(left:0.0),
  decoration: BoxDecoration (
  color: bgInputs,
  borderRadius: BorderRadius.circular(20.0)
  ),
child: TextField(
  keyboardType: TextInputType.text,
  decoration: InputDecoration(
hintText:'Nombre',
 border: OutlineInputBorder( 
  borderSide: BorderSide.none
)

  ),
)


);


}

Widget _emailInput (BuildContext context){

return Container (
  margin: EdgeInsets.only(top:10.0),
  padding: EdgeInsets.only(left:0.0),
  decoration: BoxDecoration (
  color: bgInputs,
  borderRadius: BorderRadius.circular(40.0)
  ),
child: TextField(
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
hintText:'Email',
 border: OutlineInputBorder(
  borderSide: BorderSide.none
)

  ),
)


);


}


Widget _phoneInput (BuildContext context){

return Container (
  margin: EdgeInsets.only(top:10.0),
  padding: EdgeInsets.only(left:10.0),
  decoration: BoxDecoration (
  color: bgInputs,
  borderRadius: BorderRadius.circular(20.0)
  ),
child: TextField(
  keyboardType: TextInputType.phone,
  decoration: InputDecoration(
hintText:'Telefono',
 border: OutlineInputBorder(
  borderSide: BorderSide.none
)

  ),
)


);


}



Widget _edadInput(BuildContext context){

return Container (
  margin: EdgeInsets.only(top:10.0),
  padding: EdgeInsets.only(left:10.0),
  decoration: BoxDecoration (
  color: bgInputs,
  borderRadius: BorderRadius.circular(20.0)
  ),
child: TextField(
  keyboardType: TextInputType.datetime,
  decoration: InputDecoration(
hintText:'Edad',
 border: OutlineInputBorder(
  borderSide: BorderSide.none
)

  ),
)


);


}

Widget _passwordInput(BuildContext context){

return Container (
  margin: EdgeInsets.only(top:10.0),
  padding: EdgeInsets.only(left:10.0),
  decoration: BoxDecoration (
  color: bgInputs,
  borderRadius: BorderRadius.circular(20.0)
  ),
child: TextField(
  keyboardType: TextInputType.visiblePassword,
  obscureText: true,
  decoration: InputDecoration(
hintText:'Contraseña',
 border: OutlineInputBorder(
  borderSide: BorderSide.none
)

  ),
)


);


}


Widget _signUpButton(BuildContext context){
return Container(
  width: 370.0,
  height:35.0,
  margin:EdgeInsets.only(top: 40.0),
  child:RaisedButton(
    onPressed: (){
      
    Navigator.pushNamed(context, 'tabs');
    },
    color: Theme.of(context).buttonColor,//acentcolor es el naranjo
    child: Text(

      'Registrarse',
      style: TextStyle(color:Colors.white,fontSize:17.0 ),
    ),
    shape: 
    RoundedRectangleBorder (borderRadius: BorderRadius.circular(20.0)),

  ),

 

);




                      
                            
                        
}



















