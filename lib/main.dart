import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            title: const Text('Metropolitan Wallpaper'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepOrangeAccent],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft
              ),
            ),
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
