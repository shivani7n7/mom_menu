import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
 
  TextEditingController user=new TextEditingController();
  TextEditingController password=new TextEditingController();

  String message='';
  
  Future<List> _login() async {
    final response = await http.post("https://mommyfood.000webhostapp.com/get.php", body: {
      "user": user.text,
      "password": password.text,   
    });
    print(response.body);
    var data = json.decode(response.body);
    if(data['count']==0){
      setState(() {
          message="Login Failed";
      });
    }
    else{
      Navigator.pushReplacementNamed(context, '/mainPage');
    }
  }
    @override 
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('LOG IN'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'LOGIN WITH SOCIAL ACCOUNT',
                  style: textStyle,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'images/facebook.png',
                      width: 50,
                    ),
                    Image.asset(
                      'images/linkedin.png',
                      width: 50,
                    ),
                    Image.asset(
                      'images/google.png',
                      width: 50,
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Text(
                'OR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: user,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Color(0xFFE88A60),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: password  ,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Color(0xFFE88A60),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: ButtonTheme(
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: FlatButton(
                  color: Color(0xFFE88A60),
                  child: Text('Log In'),
                  onPressed: () {
                    _login();
                    
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(message,style: TextStyle(fontSize: 20.0,color: Colors.red),),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(
                      color: Color(0xFFE88A60),
                      letterSpacing: 2.0,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Container(
              child: InkWell(
                child: Text(
                  'Dont have an account ?',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
