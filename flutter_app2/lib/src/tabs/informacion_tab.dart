import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';
//import 'package:flutter_app2/src/widgets/app_bar_categoria.dart';
import 'package:flutter_app2/src/widgets/app_bar_informacion.dart';
import 'package:flutter_app2/src/widgets/swiper_categorias.dart';
//import 'package:flutter_app2/src/widgets/back_button.dart';
//import 'package:flutter_app2/src/widgets/receta_listado.dart';
import 'package:flutter_app2/src/widgets/titles.dart';

class InformacionTab extends StatefulWidget {
  
  //final String descripcion ='¿Qué es la hipertensión? La sangre hace posible que funcionen nuestras células , que generen energía, hagan crecer los tejidos, y luchen contra la enfermedad. La sangre llega a cada célula en nuestro cuerpo a través del sistema cardiovascular que consiste en nuestro corazón, arterias, capilares y venas.La presión arterial es la medida de fuerza de cada latido contra importantes vasos sanguíneos llamados arterias. Se mide en milímetros de mercurio (mmHg) e incluye la presión sistólica , (la presión en las arterias cuando el corazón late) y diastólica , (la presión en las arterias entre cada latido). Es el término médico para la presión arterial alta hipertensión';
//Toda esta informacion debe estar en un archivo .json
  @override
  _InformacionTabState createState() => _InformacionTabState();
}

class _InformacionTabState extends State<InformacionTab> {
  @override
  Widget build(BuildContext context) {

    return Scaffold (
       backgroundColor:Colors.white,
      body:CustomScrollView (
        slivers: <Widget>[
          appBarInformacion('Informacion'),
          SliverList(
            delegate:SliverChildListDelegate(
              [
              titles('Informacion ',titlesStyleCategoria),
             // textoDescripcion(descripcion)
            
              //recetasListado(context),
             

            ]
            ) 
             ),
          
        ],//para la flecha


          ),

    );
    
  }
}


Widget textoDescripcion (String texto){

return Container(
  margin: EdgeInsets.only(top:5.0, left:30.0, right:30.0),
  child: Text(
    texto, 
    textAlign:TextAlign.left,
    style: TextStyle(
      fontFamily: 'Avenir',
      fontWeight:FontWeight.normal,
      color:Color.fromRGBO(15,55,91,1),
      fontSize:13.0),

  ),
);

}

