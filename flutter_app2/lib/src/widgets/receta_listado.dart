import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';
import 'package:flutter_app2/src/widgets/texto_explorer.dart';

//widget texto 
//import'package:flutter_app2/src/widgets/texto_receta.dart';


Widget recetasListado(BuildContext context){ //Alimentacion pero desde el explore

  return Column(
    children: <Widget>[
      GestureDetector(
        onTap: (){
          
        Navigator.pushNamed(context,'alimentacion');

        },  

    

      
        child: Image (
        
         
          image: NetworkImage('https://images.unsplash.com/photo-1490645935967-10de6ba17061?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1035&q=80'),
          fit: BoxFit.fill,

          width :380.0,
          height: 160.0,
        
        )
        ),
      
        textoExplorer(titlesRecipeStyle)

    ],
  );



}