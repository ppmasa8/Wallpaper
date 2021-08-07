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
            title: const Text('Metropolitan Wallpaper'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              },
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent
                ),
                child: Text(
                  'br',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Search'),
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text('Category'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('My Lists'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
