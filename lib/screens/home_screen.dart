import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String route = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                  Text('test'),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out'),
              onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}
