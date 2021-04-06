import 'package:flutter/material.dart';

//Estilos
import 'package:flutter_app2/src/colors/colors.dart';

Widget textoReceta(TextStyle estilos){

  return Column (
    children : <Widget>[
        Container(
          alignment: AlignmentDirectional.topStart,
          margin: EdgeInsets.only(left:30.0 , top: 0.0),
        
          child: Column (
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children :<Widget>[

              Text('Recetas Saludables',
                textAlign:TextAlign.left,
                style: titlesRecipeStyle,
                ),

                Text('Pechugas de pollo al horno ',
                textAlign: TextAlign.left,
                style: descripcionRecipeStyle,
                ),
                SizedBox(
                  height:10.0 ,
                )


            ]
          ),
          
          
          
          )

        
    
    ]
  ); 
  
}
