import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              ListTile(title: Text('Item 1'), onTap: () {}),
              Divider(),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("My first Project"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Text("CAT")),
              Container(
                  width: 150,
                  height: 150,
                  color: Colors.amberAccent,
                  child: Image.asset('assets/images/cat.jpg')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Phone")
          ],
        ),
      ),
    );
  }
}
