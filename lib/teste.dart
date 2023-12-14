import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Black Button Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // Set button color to black
              textStyle:
                  TextStyle(color: Colors.white), // Set text color to white
            ),
            child: Text('Press me'),
          ),
        ),
      ),
    );
  }
}
