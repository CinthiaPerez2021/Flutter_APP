import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';
import 'package:flutter_app2/src/widgets/app_bar_categoria.dart';
import 'package:flutter_app2/src/widgets/receta_listado.dart';
import 'package:flutter_app2/src/widgets/titles.dart';


class AlimentacionTab extends StatefulWidget {
 

  @override
   AlimentacionTabState createState() =>  AlimentacionTabState();
}

class  AlimentacionTabState extends State <AlimentacionTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:CustomScrollView (
        slivers: <Widget>[
          appBarCategoria('Alimentacion'),
          SliverList(
            delegate:SliverChildListDelegate(
              [
              titles('Aqui debe ir la alimentacion que el usuario necesita segun el filtro de los formulario ',titlesStyleCategoria),

          
              //swiperCategorias(),
              recetasListado(context),
             

            ]
            ) 
             ),
          
        ],//para la flecha


          ),





    );
    
  }
}