import 'package:flutter/material.dart';
import 'package:flutter_app2/src/colors/colors.dart';
//import 'package:flutter_app2/src/widgets/app_bar_categoria.dart';

import 'package:flutter_app2/src/widgets/back_button.dart';
import 'package:flutter_app2/src/widgets/swiper_categorias.dart';
import 'package:flutter_app2/src/widgets/receta_listado.dart';
//button back
import 'package:flutter_app2/src/widgets/titles.dart';
import 'package:flutter_swiper/flutter_swiper.dart';





class HomeTab extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
   
    return SafeArea(
      child:CustomScrollView(
        slivers: [
          SliverList(
          delegate: SliverChildListDelegate(
        [   
           
          Container (
           padding: const EdgeInsets.only(right: 3.0 , bottom:8.0),
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(left:0.0, top:2.0,right: 3.0),//contenedor 
           //anchura de la foto y todo (30) 
            child:
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[

              _appBar(context),

                titles('Hipertension Arterial',titlesStyleCategoria),
              _sliderCards(),
              
              
              titles('Aqui se debe mostrar un listado con las presiones antiguas ingresadas y una opcion para que el usuario ingrese denuevo su presion ',titlesStyle),

              //swiperCategorias(),
              //titles('Alimentacion',titlesStyle),
              //titles('Rutina de Ejercicios',titlesStyle),
             
               
              
              SizedBox( //para la foto de alimentacion
                height: 10.0,
               
              )
              ,
            // recetasListado(context),
            // _tarjeta2(context),

              
             
           
            

              
              ]
          )
          )
         

        ]))],
      )
      );
  }



Widget _appBar(BuildContext context ){ //flecha
  return Row(
    children:[
      Container(
      child:Row(
      children:[
      
      Container(
        margin: EdgeInsets.all(13.0),
        color: Colors.white,

          child:backButton(context,Colors.grey)
              )
           ],
        ),

       )
    ],
  );

   
}
  



Widget _sliderCards(){

   
  return Container(
    height: 280.0,
     margin: EdgeInsets.only(left:2.0,right: 4.0),
    //width: 300.0,
    child:Swiper(
      itemCount: 3,
      layout: SwiperLayout.DEFAULT,
    itemBuilder:(BuildContext context , int index ){
      return ListView.builder(
        scrollDirection: Axis.horizontal,
         itemBuilder: (BuildContext context ,int index){
          return _tarjeta(context);
           


         
         
        }
      );
    },
    


    ),


  );
}

Widget _tarjeta(context){

return Container (
margin: EdgeInsets.only(left:5.0,top: 15.0,right: 10.0),
alignment: AlignmentDirectional.centerEnd,
  child: Column(children:[

    ClipRRect (
      borderRadius: BorderRadius.circular(30),
      child: Image( 
        width: 300.0,
        height: 230.0,
        fit: BoxFit.cover,
        image: AssetImage('assets/hipertension.png'),
        //image: NetworkImage('https://images.unsplash.com/photo-1542884748-2b87b36c6b90?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
        
        

       
      ),
    )
  ]),

     
    );


} 


//Widget _tarjeta2(context){

//return Container (
//margin: EdgeInsets.only(left:5.0,top: 15.0,right: 10.0),
//alignment: AlignmentDirectional.centerEnd,
  //child: Column(children:[

    //ClipRRect (
      //borderRadius: BorderRadius.circular(30),
      //child: Image( 
        //width: 300.0,
        //height: 230.0,
        //fit: BoxFit.cover,
        //image: AssetImage('assets/hipertension.png'),
        //image: NetworkImage('https://images.unsplash.com/photo-1542884748-2b87b36c6b90?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
        
        

       
      //),
    //)
  //]),

     
    //);


} 











    //Column(

    // crossAxisAlignment: CrossAxisAlignment.start,
     // children: [
       // Container(
         /// margin: EdgeInsets.only(top:10.0),
          //child: Text( " La hipertension es ...........dfdfdf",
          //style: TextStyle(
            //color: Colors.black,
            //fontWeight:FontWeight.bold,
            //fontSize :17.0)),



         // ),

          // Container(
          //alignment: Alignment.centerLeft,
          //child: Text( " ..........dfdfdf",
          //style: TextStyle(
           // color: Theme.of(context).disabledColor,
            //fontWeight:FontWeight.w600,
            //fontSize :13.0)),



         // ),
        
        
    //  ],




  //  )
//  ]),
//);
//
//}//

//Widget _headers(BuildContext context, String texHeader,){

//return Row (
 // children: [
   // Container ( 
     // alignment: Alignment.centerLeft,
      //child: headerText ('textHeader',Colors.black,FontWeight.bold,30.0),

   // )
    
    //],
    
    //);
  

