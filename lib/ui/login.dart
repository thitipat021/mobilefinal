import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
@override
LoginState createState() {
  return LoginState();
  }
}

class LoginState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
      child: ListView(
        children: <Widget>[
          Image.asset("resources/key.png",
          height: 180,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "User id",
              hintText: "User id",
              enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.lightBlue)),
              icon: Icon(Icons.person),
            ),
            validator: (value){
              if(value.isEmpty){
                return "Please fillout Userid";
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Password",
              enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.lightBlue)),
              icon: Icon(Icons.lock),
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
            validator: (value){
              if(value.isEmpty){
                return "Please fillout Password";
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                textColor: Colors.black,
                color: Colors.indigo[100],
                child: Text("LOGIN"),
              
                onPressed: () {
                if(_formkey.currentState.validate()){
                  Navigator.pushNamed(context, "/home");}
                  // else if(idchecker == 1 || pswordchecker == 1){
                  //   Scaffold.of(context).showSnackBar(SnackBar(
                  //   content: Text('user or password ไม่ถูกต้อง'),
                  //   duration: Duration(seconds: 3),));
                  // }
                },
              ),
            ),
          ),
          FlatButton(
            child: Text('Register New Account', 
            textAlign: TextAlign.right),
            textColor: Colors.indigo,
            onPressed: (){
              Navigator.pushNamed(context, '/register');
            },
          )
        ],
      ),
      ),
    );
  }
}
