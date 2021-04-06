import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';
import 'package:flutter_app2/src/widgets/app_bar_categoria.dart';
import 'package:flutter_app2/src/widgets/titles.dart';


class EjercicioTab extends StatefulWidget {
  

  @override
  _EjercicioTabState createState() => _EjercicioTabState();
}

class _EjercicioTabState extends State<EjercicioTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:CustomScrollView (
        slivers: <Widget>[
          appBarCategoria('Ejercicios Recomendados para Usuarios'),
          SliverList(
            delegate:SliverChildListDelegate(
              [
              titles('Aqui deben ir rutinas para hipertensos ',titlesStyleCategoria),

          

            ]
            ) 
             ),
          
        ],//para la flecha


          ),





    );
  }
}