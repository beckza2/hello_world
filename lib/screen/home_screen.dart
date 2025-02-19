import 'package:flutter/material.dart';
import 'package:hello_world/screen/form_screen.dart';
import 'package:hello_world/screen/list_view_screen.dart';

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
              UserAccountsDrawerHeader(
                accountName: Text('Ebiwayo'),
                accountEmail: Text('ebiwayo@ebiwayo.com'),
                currentAccountPicture: CircleAvatar(
                  child: FlutterLogo(
                    size: 42.0,
                  ),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    child: Text("N"),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.add),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.grey,
                  )
                ],
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
              Container(color: Colors.red, child: Text("CAT")),
              Container(
                  width: 150,
                  height: 150,
                  color: Colors.amberAccent,
                  child: Image.asset('assets/images/cat.jpg')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListViewScreen(),
                      ),
                    );
                  },
                  child: Text("กด")),
              ElevatedButton.icon(
                icon: Icon(Icons.g_translate),
                onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FormScreen(),
                      ),
                    );
                },
                label: Text("Translate"),
              ),
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
