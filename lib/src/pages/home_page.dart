import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final textStyle = new TextStyle(fontSize: 25.0);
  final counter = 0;

    @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Title') ,
        centerTitle: true ,
        elevation: 3.0,
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
          Text('Numeros de clicks:', style: textStyle,) ,
          Text( '$counter', style: textStyle) ,
        ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add) ,
        onPressed: () {
          //counter++
        },
      ) ,
    );
  }


}