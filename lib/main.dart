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
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceno = 1;
  int rightdiceno = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 1,// ratio to other expanded widgets(important)
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftdiceno = Random().nextInt(6)+1;
                    print('left dice number = $leftdiceno');
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$leftdiceno.png'),
                ),
              ),
            ),
          ),
          Expanded(
            //flex:1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightdiceno = Random().nextInt(6)+1;
                    print('right dice number = $rightdiceno');
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$rightdiceno.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
