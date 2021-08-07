import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  var scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return Scaffold(
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
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.deepOrangeAccent],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft
                ),
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Navigation())
                );
              },
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
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List<Widget>.generate(
              10,
            _generator,
          )
        ),
      ),
    );
  }

  Widget _generator(int index) {
    return GestureDetector(
      child: GridTile(
        child: Container(
          color: Colors.grey,
          child: Text(
            '${index + 1}',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 48),
          ),
        )
      ),
      onDoubleTap: () {
        scaffoldKey.currentState!.showSnackBar(
          SnackBar(
            content: Text('You double tapped on ${index + 1}'),
            duration: const Duration(seconds: 1),
          ),
        );
      },
    );
  }
}
