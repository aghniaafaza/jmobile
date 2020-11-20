import 'package:flutter/material.dart';
import 'package:JMobile/login.dart';

class SignUpPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  
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
        body: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 30.0),
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
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              margin: EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                'Registrasi akun kamu untuk menikmati energi ramah lingkungan dari BioFuel!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff333333),
                ),
              ),
            ),

            Container( /** Nama Lengkap */
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xfffde7ce),
              ),
              height: 60,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Nama Lengkap',
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xffea907a),
                  ),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
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
                  hintText: 'E-mail',
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

            Container( /** Nomor Handphone */
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xfffde7ce),
              ),
              height: 60,
              child: TextField(
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Nomor Handphone',
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.phone_android,
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

            Container( /**SignUp Btn */
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
                        return LoginPage();
                        },
                    ),
                  );
                },
                padding: EdgeInsets.symmetric(vertical:15),
                color: Color(0xffea907a),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  )
                  ),    
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
