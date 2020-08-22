import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController userName = new TextEditingController();
  TextEditingController password = new TextEditingController();
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login App'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Container(
          padding: new EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('images/hassan.png'),
                width: 90,
                height: 90,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: new EdgeInsets.all(10),
//                width: 280,
//                height: 180,
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: userName,
                      decoration: InputDecoration(
                          hintText: 'user Name', icon: Icon(Icons.person)),
                    ),
                    TextField(
                      controller: password,
                      decoration: InputDecoration(
                          hintText: 'Password', icon: Icon(Icons.lock) ),
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      padding: new EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: const EdgeInsets.only(left: 37),
                              child: RaisedButton(
                                child: Text('Submit'),
                                color: Colors.white,
                                onPressed: submitMethod,
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 37),
                              child: RaisedButton(
                                child: Text('Clear'),
                                color: Colors.white,
                                onPressed: clearMethod,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                child: Text('Welcome Mr $name'),
              ),
            ],
          )
      ),
    );
  }

  void submitMethod() {

    setState(() {
      name = userName.text.toString();
    });

  }

  void clearMethod() {
    userName.clear();
    password.clear();
  }
}
