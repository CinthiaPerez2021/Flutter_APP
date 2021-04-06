import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

import 'package:flutter_app2/src/colors/colors.dart';

Widget appBarDetalle(String  title) {
  return SliverAppBar(
    backgroundColor: bgGrey,
    expandedHeight: 300.0,
    floating: false,
    pinned: true,
    elevation: 1.0,
    //title: Text(title, style:TextStyle(
     //fontFamily:'PlayfairDisplay-Bold',
      //fontWeight:FontWeight.bold,
      //color: colorTitle,

    
    iconTheme: IconThemeData(
      color: colorIconosAppBarr

    ),

    flexibleSpace:FlexibleSpaceBar(
      background:FadeInImage(
       placeholder:AssetImage('assets/foto.png'), 

        image:AssetImage('assets/foto.png'),
        fadeInDuration: Duration( milliseconds:150),
        fit: BoxFit.cover,
      ),

    ) ,//puedes poner una foto
  );
}