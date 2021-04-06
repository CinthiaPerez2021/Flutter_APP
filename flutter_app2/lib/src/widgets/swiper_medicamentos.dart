import 'package:flutter/material.dart';


import 'package:flutter_swiper/flutter_swiper.dart';

final controller = PageController(
          initialPage:1,
          viewportFraction:0.3

        );


Widget sliderMedicamentos(){
  return Container(

    height: 150.0,
    width: 200.0,
    padding: EdgeInsets.only(right:2.0),
    child: Swiper(
      itemCount:3,
      layout: SwiperLayout.DEFAULT ,
      itemBuilder: (BuildContext context, int index){
        return PageView(
          controller: controller,
        children: [
            _imagen(),
            imagen2(),
             _imagen3() ,
          


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
        image:AssetImage('assets/pastillas.png'),
      ),
);
}

Widget imagen2(){
return Center (
      child:Image(
        alignment: Alignment.topLeft,
        image:AssetImage('assets/pastillas1.png'),
      ),
);

}

Widget _imagen3(){

return Center (
      child:Image(
        alignment: Alignment.topLeft,
        image:AssetImage('assets/pastillasban.png'),
      ),
);

}