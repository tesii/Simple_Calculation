import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calculator'),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(24),
                color: Colors.black12,
                child: Text(
                  '0', // This is the display area
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.blue), // Set the color here
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton('7'),
                calculatorButton('8'),
                calculatorButton('9'),
                calculatorButton('/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton('4'),
                calculatorButton('5'),
                calculatorButton('6'),
                calculatorButton('x'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton('1'),
                calculatorButton('2'),
                calculatorButton('3'),
                calculatorButton('-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton('C'),
                calculatorButton('0'),
                calculatorButton('='),
                calculatorButton('+'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget calculatorButton(String text) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {
          // No functionality, just design
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(24),
          shape: CircleBorder(),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shadowColor: Colors.black54,
          elevation: 10,
          side: BorderSide(color: Colors.blue, width: 2),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 24, color: Colors.orange), // Set the color here
        ),
      ),
    );
  }
}
