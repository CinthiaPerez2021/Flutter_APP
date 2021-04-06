import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';
import 'package:flutter_app2/src/widgets/app_bar_ejercicios.dart';
//import 'package:flutter_app2/src/widgets/app_bar_categoria.dart';
//import 'package:flutter_app2/src/widgets/app_bar_ejercicios.dart';
//import 'package:flutter_app2/src/widgets/receta_listado.dart';
import 'package:flutter_app2/src/widgets/titles.dart';


class EjerciciosPage extends StatelessWidget {
 final String descripcion ='Los efectos benéficos de la actividad física (AF) se ven en todos los grados de HTA y la AF está indicada en general para todos los pacientes hipertensos con o sin terapia medicamentosa como complemento esencial al tratamiento.Los mecanismos por los cuales el ejercicio disminuye la presión arterial aún no están totalmente claros pero pueden ser explicados por disminución en los niveles plasmáticos de norepinefrina, aumento en los niveles circulantes de sustancias vasodilatadoras, disminución de la hiperinsulinemia y alteración en la función renal.';
  final String descripcion1='Cardiovasculares: mejora la frecuencia cardiaca, el gasto cardiaco, la resistencia vascular periférica, el volumen plasmático y la densidad capilar. Mejora las respuestas vasculares estimulando la vasodilatación mediada por la secreción del óxido nítrico y aumentando la función endotelial. Además el ejercicio promueve, a lo largo del tiempo, adaptaciones estructurales en los vasos sanguíneos que aumentan su longitud y su diámetro así como la angiogénesis (formación de nuevos vasos sanguíneos).Composición corporal: mejora la masa muscular y disminuye la grasa corporal subcutánea y la grasa intraabdominal.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:CustomScrollView (
        slivers: <Widget>[
           appBarEjercicio('Rutinas'),
          SliverList(
            delegate:SliverChildListDelegate(
              [
               
                titles('Actividad Fisica ',titlesStyleCategoria),
                 //recetasListado(context),
                textoDescripcion(descripcion),
                textoDescripcion(descripcion1),
              ]
         )
           )
        ],//para la flecha


      ),
       //Para el scroll
    );


  }
}

//titles('Rutina de Ejercicios',titlesStyle),
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