import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void shuvo()
  {
    setState(() {
        leftdicenum =Random().nextInt(6)+1;
        rightdicenum =Random().nextInt(6)+1;
    });
  }
  int leftdicenum = 5;
  int rightdicenum =3;

 @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          shuvo();
                        });
                       
                      },
                      child: Image.asset('images/dice$leftdicenum.png')),
          ),
          Expanded(
                    child: FlatButton (
                         onPressed: ()
                         {
                           setState(() {
                             shuvo();
                           
                           });
                         },


                      child: Image.asset('images/dice$rightdicenum.png')),
            ),
          
        ],
      ),
    );
  }
}