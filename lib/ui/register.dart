import 'package:flutter/material.dart';
import './login.dart';

class RegistScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegistState();
  }
}

class RegistState extends State<RegistScreen> {
  final _formKey = GlobalKey<FormState>();
  
  TextEditingController username = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      appBar: AppBar(
        centerTitle: true, title: Text("Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: username,
              style: TextStyle(color: Colors.indigo),
              decoration: InputDecoration(
                  hintText: "User id",
                  enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.lightBlue)),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.indigo,
                  )
                  ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: name,
              style: TextStyle(color: Colors.indigo),
              decoration: InputDecoration(
                  hintText: "Your Name",
                  enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.lightBlue)),
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.indigo,
                  )
                  ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: age,
              style: TextStyle(color: Colors.indigo),
              decoration: InputDecoration(
                  hintText: "Age",
                  enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.lightBlue)),
                  prefixIcon: Icon(
                    Icons.calendar_today,
                    color: Colors.indigo,
                  )
                  ),
            ),
            TextField(
              controller: password,
              style: TextStyle(color: Colors.indigo),
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.lightBlue)),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.indigo,
                  )
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonTheme(
              height: 45,
              child: RaisedButton(
                textColor: Colors.black,
                color: Colors.indigo[100],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                child: Text(
                  "REGISTER NEW ACCOUNT",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  if(username.text.isEmpty||name.text.isEmpty||
                  age.text.isEmpty||password.text.isEmpty){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: new Text("Please fillout form"),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text("OK"),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                      );
                    }
                  );
                } 
                else if(username.text.length > 13){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: new Text("user id must be 6-12"),
                actions: <Widget>[
                  new FlatButton(
                    child: new Text("OK"),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
                    );
                  }
                );
              }
              else if(username.text.length < 6){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: new Text("user id must be 6-12"),
                actions: <Widget>[
                  new FlatButton(
                    child: new Text("OK"),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
                    );
                  }
                );
              }
              else if(name.text.split(" ").length != 2){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: new Text("name and surname must be seperate by space"),
                actions: <Widget>[
                  new FlatButton(
                    child: new Text("OK"),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
                    );
                  }
                );
              }
              else if(int.parse(age.text) < 10 || int.parse(age.text) > 80 && age.text.length < 3){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: new Text("Age range is 10-80"),
                actions: <Widget>[
                  new FlatButton(
                    child: new Text("OK"),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
                    );
                  }
                );
              }
              else if(password.text.length < 6){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: new Text("Password must have more than 6 character "),
                actions: <Widget>[
                  new FlatButton(
                    child: new Text("OK"),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
                    );
                  }
                );
              }
              else{
                Navigator.pop(context);
              }
                },
              ),
            )
          ],
        ),
      ),
    );
    }
  }