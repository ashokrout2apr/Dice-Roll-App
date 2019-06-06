import 'package:flutter/material.dart';
//imported 'dart:math' for random number generation
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('ROLL DICE'),
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

  int leftDice = 1;//variable that changes the left dice
  int rightDice = 1;//variable that changes the right dice
  void _diceChange(){
    setState(() {
      leftDice = Random().nextInt(6)+1;//random function used to generate a random number b/w 0-6
      rightDice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: _diceChange,//function call statement
              child: Image(image: AssetImage('images/dice$leftDice.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: _diceChange,//function call statement
              child: Image(image: AssetImage('images/dice$rightDice.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
