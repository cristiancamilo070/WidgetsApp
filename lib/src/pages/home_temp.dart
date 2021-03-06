import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones= ['uno','dos','tres'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
       //children: _crearItems(),
       children: _crearItemsCorto(),
      ),
    );
  }

 /* List<Widget> _crearItems(){
    List<Widget> lista=new List<Widget>();
    for (String opt in opciones) {
      final tempWidget =ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
          ..add(Divider());
    }
    return lista;
  }
  */

  List<Widget> _crearItemsCorto(){
    return opciones.map((item){
        return Column(
          children: [
            ListTile(
              title: Text(item+'!'),
              subtitle: Text('xd'),
              leading: Icon(Icons.access_time),
              trailing: Icon(Icons.access_time),
              onTap: (){},
            ),
            Divider()
          ],
        );
    }).toList();
  }

  
}