import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  ListViewScreen({Key key}) : super(key: key);

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
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
          title: Text("ListView Screen"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("หัวข้อ 1 "),
            )
          ],
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
