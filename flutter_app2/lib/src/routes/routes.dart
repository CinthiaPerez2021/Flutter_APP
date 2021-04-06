

import 'package:flutter/material.dart';
import 'package:flutter_app2/src/coleccion_categorias/view/consejos.dart';

import 'package:flutter_app2/src/coleccion_categorias/view/ejercicios_hiper.dart';
import 'package:flutter_app2/src/pages/RegisterPresion_page.dart';





//pages
import 'package:flutter_app2/src/pages/welcome_page.dart';
import 'package:flutter_app2/src/pages/login_page.dart';
import 'package:flutter_app2/src/pages/forgot_password.dart';
import 'package:flutter_app2/src/pages/sign_up_page.dart';
import 'package:flutter_app2/src/tabs/tabs_page.dart';
import 'package:flutter_app2/src/coleccion_categorias/view/coleccion_page.dart';
import 'package:flutter_app2/src/coleccion_categorias/view/alimentacion_saludable.dart';




final routes = <String, WidgetBuilder> {
'welcome': (BuildContext context) => WelcomePage (),
'login' : (BuildContext context ) => LoginPage(),
'forgot-password' : (BuildContext context ) => ForgotPassword(),
'sign-up' : (BuildContext context ) => SignUpPage(),
'register_presion' : (BuildContext context ) => RegisterPresionPage(),
'tabs' : (BuildContext context ) => TabsPage(),
'coleccion' : (BuildContext context ) => ColeccionPage(),
'alimentacion':(BuildContext context ) => AlimentacionPage(),
'ejercicios':(BuildContext context ) => EjerciciosPage(),
'consejos':(BuildContext context ) => ConsejosPage(),






};