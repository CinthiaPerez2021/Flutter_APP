import 'package:flutter/material.dart';
//import 'package:flutter_app2/src/colors/colors.dart';


Widget titles(String texto,TextStyle estilos ){
return Container(
  
  alignment:AlignmentDirectional.topStart,
  
  margin:EdgeInsets.only(left:10.0),
  child:Text(texto, style: estilos)
  );
  
}