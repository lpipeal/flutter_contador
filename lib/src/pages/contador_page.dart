import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    
    return _ContadorPageState();
  }

}

class _ContadorPageState extends State <ContadorPage>{

  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi primer app Stateful'),
        centerTitle: true,
        elevation: 25,
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks',style: _estiloTexto),
            Text('$_conteo',style: _estiloTexto),
            
          ],
        )
      ),
      floatingActionButton: FloatingActionButton (
        child: Icon(Icons.add),
        onPressed: (){
          print('Hola mundo');
          

          //Metodo para redibujar widget
          setState(() {
            _conteo++;
          });

        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

}