import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
@override
HomeState createState() {
  return HomeState();
  }
}

class HomeState extends State<HomeScreen> {
   
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          children: <Widget>[
            ListTile(
              title: Text('Hello fname lname'),
              subtitle: Text('this is my quote "today is my day"'),
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.indigo[100],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("PROFILE SETUP"),
              onPressed: () {
                Navigator.of(context).pushNamed('/profile');
              },
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.indigo[100],
              child: Text("MY FRIENDS"),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/friend');
              },
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.indigo[100],
              child: Text("SIGN OUT"),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              onPressed: () async {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}