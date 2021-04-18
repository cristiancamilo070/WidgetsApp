import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController=new ScrollController();
  List<int> _listaNum=new List();
  int _ultimo=0;
  bool _isloading=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      //print('scroll');
      if (_scrollController.position.pixels==_scrollController.position.maxScrollExtent) {
       // _agregar10();
       _fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Listas'),
    ),
    body: Stack(
      children: [
        _crearLista(),
        _crearLoading()
      ],
    )
    
    );
  }


  Widget _crearLista(){
    return RefreshIndicator(
        onRefresh: obtenerpagina1,
        child: ListView.builder(
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index){
          final imagen =_listaNum[index];
          return FadeInImage(
            placeholder: AssetImage('assets/load1.gif'), 
            fit: BoxFit.fill,
            image: NetworkImage('https://picsum.photos/200/300?random=$imagen'));
        },
        itemCount: _listaNum.length,
        ),
    );

  }

  Future<Null> obtenerpagina1()async{
    final duration=new Duration(seconds: 2);
     new Timer(duration, (){
      _listaNum.clear();
      _ultimo++;
      _agregar10();
    });

    return Future.delayed(duration);
  }


  //SCROLL INFINITO
  void _agregar10(){
    for (var i = 0; i < 10; i++) {
      _ultimo++;
      _listaNum.add(_ultimo);
    }
    setState(() {
      
    });
  }


  Future _fetchData()async{
    _isloading=true;
    setState(() {
      final duration=new Duration(seconds: 2);
      new Timer(
        duration, 
        respuestaHTTP
        );
    });
  }
  void respuestaHTTP(){
    _isloading=false;
    _agregar10();
    _scrollController.animateTo(
      _scrollController.position.pixels+100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
      
      );
  }

  Widget _crearLoading(){
    if (_isloading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
            CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15.0,)
        ],
      );
      
    }else{
      return Container();
    }
  }
}