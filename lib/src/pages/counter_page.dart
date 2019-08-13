import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

    @override
    createState() => _CounterPageState();
    
}

class _CounterPageState extends State<CounterPage> {

  final _textStyle = new TextStyle(fontSize: 25.0);
  int _counter = 0;

    @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful') ,
        centerTitle: true ,
        elevation: 3.0,
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
          Text('Number of clicks:', style: _textStyle,) ,
          Text( '$_counter', style: _textStyle) ,
        ],
        )
      ),
      floatingActionButton: _CreateFAB(),
    );
  }

  Widget _CreateFAB(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
          SizedBox(width: 30,),
          FloatingActionButton(child:  Icon(Icons.refresh), onPressed: _restartCount ),
          Expanded(child: SizedBox()),
          FloatingActionButton(child:  Icon(Icons.remove), onPressed: _removeCount ),
          SizedBox(width: 5.0,),
          FloatingActionButton(child:  Icon(Icons.add), onPressed: _addCount ),

      ],
      );

  }

  void _addCount(){
    setState(() => _counter++);
  }

  void _removeCount(){
    setState(() => _counter--);
  }

  void _restartCount(){
    setState(() => _counter = 0);
  }

}