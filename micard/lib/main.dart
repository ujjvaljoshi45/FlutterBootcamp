import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/default_avatar.png'),
              ),
              Text(
                'Ujjval Jo',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    color: Colors.white60),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white54,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+91 74359 51550',
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'ujjvaljoshi45@gmail.com',
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
