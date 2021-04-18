import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('avatar page'),
      actions: [
        Container(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://c.files.bbci.co.uk/48DD/production/_107435681_perro1.jpg'),
            radius: 20.0, 
          ),
        ),

        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            child: Text('CR'),
            backgroundColor: Colors.pink.shade400,
          ),
        )
      ],
    ),

    body: Center(
      child: FadeInImage(
        placeholder: AssetImage('assets/load1.gif'), 
        image: NetworkImage('https://www.ecestaticos.com/image/clipping/79776773aab795837282c7d4947abaf7/por-que-nos-parece-que-los-perros-sonrien-una-historia-de-30-000-anos.jpg'),
        fadeOutDuration: Duration(milliseconds: 200),
        
        ),
        ),
    );
  }
}