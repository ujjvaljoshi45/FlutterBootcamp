import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('Layout Challenge'),
        ),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 100,
                color: Colors.red,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 65, vertical: 250),
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
