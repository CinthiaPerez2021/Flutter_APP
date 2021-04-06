import 'package:flutter/material.dart';

//Tabs
import 'package:flutter_app2/src/tabs/Home_tab.dart';
import 'package:flutter_app2/src/tabs/informacion_tab.dart';
import 'package:flutter_app2/src/tabs/Alimentacion_tab.dart';
import 'package:flutter_app2/src/tabs/profile_tab.dart';

import 'ejercicios_tab.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  List<Widget> _widgetOptions = [
    HomeTab(),
    InformacionTab(),
    AlimentacionTab(),
    EjercicioTab(),
    ProfileTab(),


  ];
  int _selectedItemIndex= 0;


  void _cambiarWidget (int index){

    setState(() {
          _selectedItemIndex = index;
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar:_bottonNavigationBar (context) ,
    );
  }


  Widget _bottonNavigationBar (BuildContext context){
  return BottomNavigationBar(
    iconSize: 30.0,//Tamaño de los iconos
    selectedItemColor: Theme.of(context).buttonColor,//acents color es naranjo
    unselectedItemColor: Colors.grey,
    currentIndex: _selectedItemIndex,
    onTap: _cambiarWidget,
    showUnselectedLabels: true,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon:Icon(Icons.home),
        label: 'Inicio'
      ),

       BottomNavigationBarItem(

        icon:Icon(Icons.book),
        label: 'Informacion'
       ),

        BottomNavigationBarItem(

        icon:Icon(Icons.restaurant_menu_outlined),
        label: 'Alimentacion'
        ),

         BottomNavigationBarItem(

        icon:Icon(Icons.run_circle_sharp),
        label: 'Ejercicios'
         ),
         BottomNavigationBarItem(

        icon:Icon(Icons.person),
        label: 'Mi cuenta'
         ),
  

    ],

  );



}


}

