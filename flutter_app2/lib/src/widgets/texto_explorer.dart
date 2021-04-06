import 'package:flutter/material.dart';

//Estilos
import 'package:flutter_app2/src/colors/colors.dart';

Widget textoExplorer( TextStyle estilos){

  return Column (
    children : <Widget>[
        Container(
          alignment: AlignmentDirectional.topStart,
          margin: EdgeInsets.only(left:30.0),
        
          child: Column (
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children :<Widget>[

              Text('Esta aplicacion se encarga de ',
                textAlign:TextAlign.left,
                style:titlesStyle,
                ),

                Text('En el mundo la Hipertension Arterial......... ',
                textAlign: TextAlign.left,
                style: descripcionRecipeStyle,
                )



            ]
          ),
          
          
          
          )

        
    
    ]
  ); 
  
}
