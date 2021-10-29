import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:grocery/homepage.dart';
import 'package:grocery/services/firebase_service.dart';
import 'package:grocery/widgets/background.dart';

import 'register_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Form(
          key: _loginFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2661FA), fontSize: 36),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: "Email Id"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter email id';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                  obscureText: _obscureText,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: MaterialButton(
                  onPressed: () {
                    if (_loginFormKey.currentState.validate()) {
                      FirebaseService().signIn(email: _emailController.text, password: _passwordController.text).then((result) {
                        if (result == null) {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                        } else {
                          print("result $result");
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.grey,
                            content: Text(
                              result,
                              style: TextStyle(fontSize: 16),
                            ),
                          ));
                        }
                      });
                    }
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()))},
                  child: Text(
                    "Don't Have an Account? Sign up",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF2661FA)),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: SignInButton(
                    Buttons.Google,
                    text: "Sign up with Google",
                    onPressed: () {
                      FirebaseService().signInWithGoogle();
                      // googleSignIn().whenComplete(() async {
                      //   User user = await FirebaseAuth.instance.currentUser;
                      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                      // });
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
