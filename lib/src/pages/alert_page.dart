import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('alert page'),
    ),
    body: Center(
      child: RaisedButton(
        child: Text('ALERTA'),
        color: Colors.blue,
        textColor: Colors.white,
        shape: StadiumBorder(),
        onPressed: ()=>_mostrarAlerta(context),
        ),

      ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.arrow_back),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    );
  }

void _mostrarAlerta (BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)) ,
        title: Text('Alerta'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children:<Widget> [
            Text('contenido de la caja'),
            FlutterLogo(size:200)
          ],
        ),
        actions:<Widget> [
          FlatButton(
            onPressed: ()=>Navigator.of(context).pop(),
             child: Text('Cancelar')
             ),

             FlatButton(
            onPressed: ()=>Navigator.of(context).pop(),
             child: Text('ok')
             ),
        ],
      );
    },
    );
}

}