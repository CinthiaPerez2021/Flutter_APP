import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';

Widget appBarCategoria(String  title) {
  return SliverAppBar(
    backgroundColor: bgGrey,
    floating: false,
    pinned: true,
    elevation: 0.0,
    title: Text(title, style:TextStyle(
     fontFamily:'PlayfairDisplay-Bold',
      fontWeight:FontWeight.bold,
      color: colorTitle,

    )),
    iconTheme: IconThemeData(
      color: colorIconosAppBarr

    ),
  );
}