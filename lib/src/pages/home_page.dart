import 'package:flutter/material.dart';



class HomePage extends  StatelessWidget {
 // const HomePage({Key key}) : super(key: key);

final TextStyle estiloTexto = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi primer app'),
        centerTitle: true,
        elevation: 25,
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hola mundo',style: estiloTexto),
            Text('0',style: estiloTexto),
            
          ],
        )
      ),
    );
  }
}