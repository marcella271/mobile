
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_project4/BKPM/acara38,39,40/HomeScreen.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;//validasi penulisan email, password dan akun jika sudah terdaftar

  registerSubmit() async {
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(
      email: _emailController.text.toString().trim(),
      password: _passwordController.text);
    } catch (e) {
      print(e);//untuk menampilkan notif dari catch
      ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text(e.toString())),
);

    }
  }

  loginSubmit() async {
    try {
      _firebaseAuth
      .signInWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text)
      .then((value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen())));
    } catch (e) {
      print (e);
     ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text(e.toString())),
);

    }
  }

  @override 
  Widget build(BuildContext context){
    print("LoginScreen loaded");
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                "Latihan Auth",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "assets/images/flutter.png",
                height: 100,
                width: 100,
              ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
                )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                  )),
                TextButton(onPressed: () {}, child: Text("Forgor Password")),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {
                      registerSubmit();
                    }, 
                    child: Text("Register") 
                    ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      loginSubmit();
                    }, 
                    child: Text("Login"),
                    style: raisedButtonStyle
                    ),
                )
          ],
        ),
        ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.grey[300],
  foregroundColor: Colors.blue[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ));