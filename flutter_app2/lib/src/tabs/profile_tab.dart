import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';
import 'package:flutter_app2/src/widgets/app_bar_categoria.dart';
import 'package:flutter_app2/src/widgets/titles.dart';

class ProfileTab extends StatefulWidget {
  

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:CustomScrollView (
        slivers: <Widget>[
          appBarCategoria('Mi cuenta'),
          SliverList(
            delegate:SliverChildListDelegate(
              [
              titles('Cuenta Usuario ',titlesStyleCategoria),

          

            ]
            ) 
             ),
          
        ],//para la flecha


          ),





    );
  }
}