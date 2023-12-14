import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Iphone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: TelaCalculadora(),
    );
  }
}

class TelaCalculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text('Calculadora Iphone'),
          backgroundColor: Colors.purpleAccent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.bottomRight,
            child: Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton1('C'),
              _buildButton1('±'),
              _buildButton1('%'),
              _buildOperatorButton('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildOperatorButton('x'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
              _buildOperatorButton('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
              _buildOperatorButton('+'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton(' 0               '),
              _buildButton(','),
              _buildOperatorButton('='),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton1(String text) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text(
        text,
        style:
            TextStyle(fontSize: 24.0, color: Color.fromARGB(255, 189, 42, 42)),
      ),
    );
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 24.0, color: Colors.blueAccent),
      ),
    );
  }

  Widget _buildOperatorButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // Handle operator press
      },
      child: Text(
        text,
        style: TextStyle(
            fontSize: 24.0, color: const Color.fromARGB(255, 83, 83, 21)),
      ),
    );
  }

  Widget _buildEqualButton() {
    return ElevatedButton(
      onPressed: () {
        // Handle equal press
      },
      child: Text(
        '=',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }

  Widget _buildClearButton() {
    return ElevatedButton(
      onPressed: () {
        // Handle clear press
      },
      child: Text(
        'C',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }

  Widget _buildDeleteButton() {
    return ElevatedButton(
      onPressed: () {
        // Handle delete press
      },
      child: Icon(Icons.backspace),
    );
  }
}
