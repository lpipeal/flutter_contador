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
      floatingActionButton: _crearBotones()
      );
 }


 
      Widget _crearBotones(){
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,

          children: <Widget>[    
              SizedBox(width: 30,),
              FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
              Expanded(child: SizedBox(),),
              FloatingActionButton(child: Icon(Icons.add), onPressed: _incrementar),
              SizedBox(width: 5,),
              FloatingActionButton(child: Icon(Icons.remove), onPressed: _decrementar),
              
          ],
        );
      }

      void _incrementar(){
        print('incrementar');
        setState(() => _conteo++
        );
      }

      void _decrementar(){
        print('decrementar');
        setState(() => _conteo--
        );
      }

      void _reset(){
        print('resetear');
        setState(() => _conteo=0
        );
      }



 

}