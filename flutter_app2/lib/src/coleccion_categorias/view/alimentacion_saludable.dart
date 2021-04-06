import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';
//import 'package:flutter_app2/src/widgets/app_bar_categoria.dart';
import 'package:flutter_app2/src/widgets/app_bar_detalle.dart';
import 'package:flutter_app2/src/widgets/swiper_verduras.dart';
import 'package:flutter_app2/src/widgets/texto_receta.dart';
//import 'package:flutter_app2/src/widgets/receta_listado.dart';
import 'package:flutter_app2/src/widgets/titles.dart';

class AlimentacionPage extends StatelessWidget {
 
final String descripcion ='Limpiamos bien las pechugas, retirando las grasa y los tendones, y secamos con papel de cocina. Disolvemos la sal en el agua dentro de un recipiente amplio y sumergimos las pechugas, que queden totalmente cubiertas. Dejamos reposar en la salmuera entre 30 minutos y una hora. Si hace calor, mejor en la nevera. Transcurrido el tiempo de reposo retiramos las pechugas de la salmuera. Colocamos en una fuente de horno, bien secas, y rociamos con el aceite de oliva virgen extra. Añadimos el zumo de limón, la mostaza y una pizca de pimienta negra. Espolvoreamos con el resto de especias (los dos tipos de pimentón, el comino y el ajo en polvo) y frotamos las pechugas por todos lados para que queden bien cubiertas. Introducimos la fuente con las pechugas en el horno, precalentado a 200ºC con calor arriba y abajo, y cocemos durante 25-30 minutos. Volteamos a media cocción para que se hagan de manera uniforme. Retiramos del horno, cortamos en rodajas y servimos inmediatamente.';
// el texto se debe colocar como un archivo json , y debe ser en base a los valores ingresados por el usuario (edad y presion sistole)
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:colorBg,
     
      body:CustomScrollView (
        slivers: <Widget>[

          appBarDetalle('Recetas Saludables'),

           SliverList(
            delegate:SliverChildListDelegate(
              [
                
                Padding(
                  padding: const EdgeInsets.only( right: 8.0 , bottom: 8.0 ),
                  child:textoReceta(titlesRecipeStyleDetalle),
                ),
                titles('Ingredientes ',titlesStyle),
                SizedBox(
                  height: 20.0,
                ),
               sliderAlimentos(),
                SizedBox(

                  height: 20.0,
                ),
                 titles('Preparacion ',titlesStyle),
                 textoDescripcion(descripcion)
                
              ]
         )
           )
      ],//para la flecha


      ),
       //Para el scroll
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