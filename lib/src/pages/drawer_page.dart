import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawerPage extends StatefulWidget {
  DrawerPage({Key key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('Slider'),
        ),
    drawer: Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text('Benepet',style: TextStyle(color: Colors.white, fontSize: 40.0)),
          padding: EdgeInsets.all(45),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
          //color: Colors.pink.shade300,
          image: DecorationImage(
            image: NetworkImage('https://www.cadenadial.com/wp-content/uploads/2020/12/Bad-Bunny-inocentes-2.jpg'),
            alignment: Alignment.centerRight,
            fit: BoxFit.fill,
            colorFilter: ColorFilter.srgbToLinearGamma(),
          ),
          borderRadius: BorderRadius.circular(50),
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.pets),
          title: Text('Adopta',style: TextStyle(fontSize: 15.0)),
          onTap: () {//ON TAP
          },
        ),
      Divider(),
        ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('Dona',style: TextStyle(fontSize: 15.0)),
          onTap: () {
          }, 
      ),
      Divider(),
      ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Salir',style: TextStyle(fontSize: 15.0)),
          onTap: () {//ON TAP
          },
        ),
      Divider(),
    ],
  ),
),


);
  }
}