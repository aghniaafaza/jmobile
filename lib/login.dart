import 'package:flutter/material.dart';
import 'package:JMobile/signup.dart';
import 'package:JMobile/beranda.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Color(0xfffde7ce),
          ),
          backgroundColor: Color(0xffea907a),
        ),
        backgroundColor: Color(0xfffbc687),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 50.0),
                child: Text(
                  'BioFuel',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffc05555),
                  ),
                ),
              ),
            ),
            Container( /** Email */
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xfffde7ce),
              ),
              height: 60,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'E-mail / Nomor Handphone',
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xffea907a),
                  ),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),

            Container( /** Password */
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xfffde7ce),
              ),
              height: 60,
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: _obscureText,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xffea907a),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    color: Color(0xffea907a),
                    onPressed: (){
                      setState ((){
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),

            Container( /**Login Btn */
              width: double.infinity,
              margin: EdgeInsets.only(
                right: 20,
                left: 20,
                top:20,
                bottom:0,
              ),
              child: FlatButton(
                onPressed:(){
                  Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:(ctx){
                            return Beranda();
                          },
                        ),
                      );
                },
                padding: EdgeInsets.symmetric(vertical:15),
                color: Color(0xffea907a),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  )
                  ),    
              ),
            ),

            Row(
              children: [
                Container( /** Sign up */
                margin: EdgeInsets.only(left: 20.0),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:(ctx){
                            return SignUpPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 18.0, 
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
