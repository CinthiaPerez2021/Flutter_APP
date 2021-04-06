import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


 final controller = PageController(
          initialPage:2,
          viewportFraction:0.4

        );
 


// ignore: camel_case_types
class swiperCategorias extends StatelessWidget {

   

  @override
  Widget build(BuildContext context) {
   return Container(
    height: 120.0,
    padding: EdgeInsets.symmetric(horizontal:2.0),
    //width: 400.0,

    child:Swiper(
      itemBuilder: (BuildContext context ,index ){

        return PageView(
          controller:controller,
          children: <Widget>[

            _imagenCategoria(context),
            
            imagenCategoria2(context),
            imagenCategoria3(context),
            imagenCategoria4(context),
          ],
        );

      },
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,

      
      ),
  );
    
  
}

Widget _imagenCategoria(BuildContext context){ //todo relacionado a la imagen en categorias
  return GestureDetector(
    onTap:() 
    {
     Navigator.pushNamed(context,'coleccion');//unir hacia la pagina de la categoria
    },
    child:Container(
      child: Column(children:[
      ClipRRect (
      borderRadius: BorderRadius.circular(30),//borde de imagen de categorias
      child: Image(//imagen de categorias 
         width: 150.0,
        height: 100.0,
        fit: BoxFit.cover,
        //image: AssetImage('Users/lahci/Desktop/flutter/Flutter_app2/flutter_app2/assets/logo.png'),
        image:NetworkImage('https://images.unsplash.com/photo-1607619056574-7b8d3ee536b2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1110&q=80'),

      ),
    ),
  


 ]
 )));

}
}

Widget imagenCategoria2(BuildContext context){ 
  return GestureDetector(
    onTap:() 
    {
     Navigator.pushNamed(context,'ejercicios');//unir hacia la pagina de la categoria
    },
    child:Container(
      child: Column(children:[
      ClipRRect (
      borderRadius: BorderRadius.circular(30),//borde de imagen de categorias
      child: Image(//imagen de categorias 
         width: 150.0,
        height: 100.0,
        fit: BoxFit.cover,
        //image: AssetImage('Users/lahci/Desktop/flutter/Flutter_app2/flutter_app2/assets/logo.png'),
        image:NetworkImage('https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),

      ),
    ),
  


 ]
 )));

}


Widget imagenCategoria3(BuildContext context){ 
  return GestureDetector(
    onTap:() 
    {
     Navigator.pushNamed(context,'consejos');//unir hacia la pagina de la categoria
    },
    child:Container(
      child: Column(children:[
      ClipRRect (
      borderRadius: BorderRadius.circular(30),//borde de imagen de categorias
      child: Image(//imagen de categorias 
         width: 150.0,
        height: 100.0,
        fit: BoxFit.cover,
        //image: AssetImage('Users/lahci/Desktop/flutter/Flutter_app2/flutter_app2/assets/logo.png'),
        image:NetworkImage('https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=841&q=80'),

      ),
    ),
  


 ]
 )));

}

Widget imagenCategoria4(BuildContext context){ 
  return GestureDetector(
    onTap:() 
    {
     Navigator.pushNamed(context,'covid');//unir hacia la pagina de la categoria
    },
    child:Container(
      child: Column(children:[
      ClipRRect (
      borderRadius: BorderRadius.circular(30),//borde de imagen de categorias
      child: Image(//imagen de categorias 
         width: 150.0,
        height: 100.0,
        fit: BoxFit.cover,
        //image: AssetImage('Users/lahci/Desktop/flutter/Flutter_app2/flutter_app2/assets/logo.png'),
        image:NetworkImage('https://images.unsplash.com/photo-1597926576494-ccac65605ef3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80'),

      ),
    ),
  


 ]
 )));

}