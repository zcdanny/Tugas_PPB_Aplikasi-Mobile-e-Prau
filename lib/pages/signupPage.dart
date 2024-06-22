import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/navbar.dart';
import 'package:moencak_apps/pages/editProfil.dart';
import 'package:moencak_apps/pages/homepage.dart';

class SignUpPage extends StatefulWidget {
  final Function() onClickedSignIn;
  const SignUpPage({Key? key, required this.onClickedSignIn}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final domisiliController = TextEditingController();
  final teleponController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    domisiliController.dispose();
    teleponController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );

    addUserDetails(
        emailController.text.trim(),
        firstNameController.text.trim(),
        lastNameController.text.trim(),
        domisiliController.text.trim(),
        teleponController.text.trim());
  }

  Future addUserDetails(
      String email,
      String firstName, String lastName, String domisili, String telp) async {
    await FirebaseFirestore.instance.collection('users').add({
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'domisili': domisili,
      'telp': telp,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 54),
                    child: Image.asset(
                      'images/logo-login.png',
                      height: 85,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Welcome to e-Prau!',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 12,
                        ),
                        Text('Silakan Sign Up',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: firstNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'First Name',
                          ),
                        ),
                        TextField(
                          controller: lastNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Last Name',
                          ),
                        ),
                        TextField(
                          controller: domisiliController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Domisili',
                          ),
                        ),
                        TextField(
                          controller: teleponController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'No Telepon',
                          ),
                        ),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        ),
                        Container(
                          height: 22.0,
                        ),
                        TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF968264),
                              minimumSize: const Size.fromHeight(50)),
                          onPressed: signUp,
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Sudah Punya Akun? Silakan',
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = widget.onClickedSignIn,
                                text: ' Login',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF20774D),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  
}
