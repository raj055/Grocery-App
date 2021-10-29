import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery/services/firebase_service.dart';
import 'package:grocery/widgets/background.dart';

import 'login_page.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _registerFormKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();

  bool _obscureText = true;
  bool _obscureText1 = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            key: _registerFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2661FA), fontSize: 36),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: "Name"),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter name';
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
                    controller: _mobileController,
                    decoration: InputDecoration(labelText: "Mobile Number"),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter mobile number';
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
                    controller: _emailController,
                    decoration: InputDecoration(labelText: "Email Id"),
                    keyboardType: TextInputType.emailAddress,
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
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText1 = !_obscureText1;
                          });
                        },
                        child: Icon(
                          _obscureText1 ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    obscureText: _obscureText1,
                    validator: (value) {
                      if (value.isEmpty) {
                        if (value != _passwordController.text) {
                          return 'password not match';
                        }
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
                      if (_registerFormKey.currentState.validate()) {
                        FirebaseService()
                            .signUp(
                          email: _emailController.text,
                          password: _passwordController.text,
                        )
                            .then((result) {
                          if (result == null) {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
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
                          colors: [Color.fromARGB(255, 255, 136, 34), Color.fromARGB(255, 255, 177, 41)],
                        ),
                      ),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "SIGN UP",
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
                    onTap: () => {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()))},
                    child: Text(
                      "Already Have an Account? Sign in",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF2661FA)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
