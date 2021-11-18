import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
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
                onPressed: (){
                  print('Left button pressed');
                },
                child: Image(
                  image: AssetImage('images/dice1.png'),
                ),
              ),
            ),
          ),
          Expanded(
            //flex:1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: (){
                  print('Right button pressed');
                },
                child: Image(
                  image: AssetImage('images/dice1.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
