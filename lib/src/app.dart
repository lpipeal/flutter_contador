import 'package:flutter/material.dart';

import 'package:myapp1/src/pages/contador_page.dart';
import 'package:myapp1/src/pages/home_page.dart';



class MyApp extends StatelessWidget {
 // const name({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quita el menu de opciones
      debugShowCheckedModeBanner: false,
      home:  ContadorPage()
      ,
    );
  }
}