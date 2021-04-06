import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

final controller = PageController(
          initialPage:1,
          viewportFraction:0.3

        );


Widget sliderAlimentos() {
  return Container(

    height: 120.0,
    
    padding: EdgeInsets.only(left:5.0),
    child: Swiper(
      itemCount:1,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index){
        return PageView(
          controller: controller,
        children: [
            _imagen(),
            _imagen2(),
             _imagen3() ,
            _imagen4(),

        ],  
        );
      },
    ),

  );
}


Widget _imagen(){

return Center (
      child:Image(
        alignment: Alignment.topLeft,
        image:AssetImage('assets/recetas.png'),
       
),
);
}


Widget _imagen2(){

return Center (
      child:Image(
        alignment: Alignment.topLeft,
        image:AssetImage('assets/pollo.png'),
      )      
);

}

Widget _imagen3(){

return Center (
      child:Image(
        alignment: Alignment.topLeft,
        image:AssetImage('assets/ensalada.png'),
      )
       
);

}

Widget _imagen4(){

return Center (
      child:Image(
        alignment: Alignment.topLeft,
        image:AssetImage('assets/frutas.png'),
      )
);

}