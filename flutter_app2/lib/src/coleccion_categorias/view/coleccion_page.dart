import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';
//import 'package:flutter_app2/src/colors/colors.dart';
//import 'package:flutter_app2/src/colors/colors.dart';
//import 'package:flutter_app2/src/widgets/app_bar_categoria.dart';
import 'package:flutter_app2/src/widgets/app_bar_medicamentos.dart';
//import 'package:flutter_app2/src/widgets/receta_listado.dart';
//mport 'package:flutter_app2/src/widgets/swiper_categorias.dart';
import 'package:flutter_app2/src/widgets/swiper_medicamentos.dart';

import 'package:flutter_app2/src/widgets/titles.dart';
//import 'package:flutter_app2/src/widgets/swiper_categorias.dart';
//import 'package:flutter_app2/src/widgets/titles.dart';

class ColeccionPage extends StatelessWidget {
  
final String descripcion ='La HTA es un importante problema de salud pública que afecta al 27,6% de la población mayor de 15 años. Disminuir 10 mmHg la PA disminuye significativamente los eventos cardiovasculares mayores, la enfermedad arterial coronaria, el accidente cerebrovascular, la falla cardiaca y la mortalidad por todas las causas.El tratamiento farmacológico se plantea en: 1) pacientes con RCV bajo si tras 3 meses de cambios de estilos de vida no logro meta de presión arterial objetivo; 2) en aquellos pacientes HTA de grado 2 y 3 con cualquier nivel de riesgo, y 3) cuando el RCV sea alto debido a daño de órgano blanco, enfermedad cardiovascular o enfermedad renal crónica, incluso cuando la HTA sea de grado 1.En este grupo de pacientes el tratamiento inicial debe incluir como primera línea un diurético tipo tiazida, un bloqueador de los canales de calcio, un IECA o ARA II. ';
// el texto se debe colocar como un archivo json , y debe ser en base a los valores ingresados por el usuario (edad y presion sistole)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:colorBg,
      body:CustomScrollView (
        slivers: <Widget>[
          appBarMedicamento('Medicamentos'),
          SliverList(
            delegate:SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only( right: 10.0 , bottom: 8.0 ),
                  
                ),

              titles('Medicamentos ',titlesStyleCategoria),
                SizedBox(
                  height: 20.0,
                ),

          
              //swiperCategorias(),
              sliderMedicamentos(),

            
              textoDescripcion(descripcion),
               SizedBox(
                  height: 20.0,
                ),
              
              ]
            ) 
             ),
          
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