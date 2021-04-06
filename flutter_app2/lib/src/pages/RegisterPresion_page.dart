import 'package:flutter/material.dart';
import 'package:flutter_app2/src/widgets/back_button.dart';
import 'package:flutter_app2/src/widgets/headers_text.dart';




class RegisterPresionPage extends StatelessWidget {
  const RegisterPresionPage({Key key}) : super(key: key);

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
          headerText('Complete la informacion acerca de su presion arterial',Theme.of(context).primaryColor,FontWeight.bold,30.0),
          

                            _PresionSistoleInput(context),
                            _PresionDiastoleInput(context),
                            _buttonRegisterPresion(context),
                            
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                               child: Text(

                                "Ingrese sus datos " ,
                               textAlign:TextAlign.center,
                                style:TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize:13.0 ))

                            )
                               ],
                               
                            
                              
                               ),




                            )








        
      )
      );
      
    
    
  }
}
    
  














Widget _PresionSistoleInput ( BuildContext context) {
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
        hintText: ' Ingresar Presion Sistole',
        border: OutlineInputBorder (
          borderSide: BorderSide.none
        ),


      ),


    ),
  );

}
 
Widget _PresionDiastoleInput (BuildContext context){
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
        hintText: 'Ingresar Presion Diastole',
        border: OutlineInputBorder (
          borderSide: BorderSide.none
        )


      ),


    ),
  );

}

Widget _buttonRegisterPresion (BuildContext context){

    return Container (
                width: 350.0,
                height: 35.0,
                margin: EdgeInsets.only(top:20.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context ,'tabs');
                  },
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color:Theme.of(context).buttonColor,
                  child: Text ('Registrado',style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0
                    
                  ))
                ),
            );


}