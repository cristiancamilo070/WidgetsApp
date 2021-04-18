import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.grey.shade700,
        elevation: 20.0,
        iconTheme: IconThemeData(color: Colors.red.shade100),//color de flecha xd
        //leading: Icon(Icons.business, color: Colors.lightBlue,size: 32,),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo2(),
           SizedBox(
            height: 10.0,
          ),
          _cardTipo3()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      //shape:StadiumBorder(side:  ),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.business,
              color: Colors.lightBlue,
              size: 32,
            ),
            title: Text('xd'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vestibulum nulla sit amet erat pellentesque, non convallis enim iaculis. Cras blandit tempor purus quis interdum. Nulla vel ullamcorper diam. Fusce volutpat sem ac justo tristique consectetur. Nullam aliquet nulla malesuada enim rutrum, ac dignissim nibh dignissim.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card= Container(
      // LO DAÑA clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/giphy.gif'),
            image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
             ),
          /*Image(
          image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg')
          ),*/
          Container(
            child: Text('jacobito hermoso'),
            padding: EdgeInsets.all(10.0),
            )
          ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.purple.shade50,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10.0,
            color: Colors.black45,
            offset: Offset(2.0,4.0),
            spreadRadius: 2.0
            )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo3() {
    final cards= Container(
        child: Column(
        children: [
          //TÍTULO
          ListTile(
            title: Text('Mascotas', 
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
             background: Paint( )..color=Colors.pink.shade200,
             color: Colors.white,
             fontWeight: FontWeight.bold,
            ),
            ),
            leading: Icon(
              Icons.pets,
              color: Colors.white,
              size: 34,
            ),
          ),
          //IMAGEN
          //Image(image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg')),
          FadeInImage(
            placeholder: AssetImage('assets/load1.gif'),
            image: NetworkImage('https://cnnespanol.cnn.com/wp-content/uploads/2020/07/200703104728-labrador-retriever-stock-super-169.jpg?quality=100&strip=info'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
             ),
         
         Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Title(
                color: Colors.white,
                child: Text('Nombre: jacobo',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                  background: Paint( )..color=Colors.pink.shade400,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
            ),
            )
            ),
              SizedBox( width: 58.0,),

              FlatButton(onPressed: () {},
                child: Text('info',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                ),
                color: Colors.pink.shade100,
                clipBehavior: Clip.antiAlias ,
                ),
              
              SizedBox( width: 5.0,),

              FlatButton(onPressed: () {}, child: Text('fotos',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                ),
                color: Colors.pink.shade100,
                clipBehavior: Clip.antiAlias ,
              ),
              SizedBox( width: 15.0,),
            ],


          )
          ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(30, 40)),
        color: Colors.pink.shade200,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.pink.shade100,
            offset: Offset(0.0,4.0),
            spreadRadius: 4.0
            )
        ]
      ),
      child: ClipRRect(
       // borderRadius: BorderRadius.circular(30.0),
        child: cards
      ),
    );
  }
}
