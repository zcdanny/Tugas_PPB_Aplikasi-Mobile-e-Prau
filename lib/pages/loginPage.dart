import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/navbar.dart';
import 'package:moencak_apps/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginPage({Key? key, required this.onClickedSignUp}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
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
                        Text('Please enter your account',
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
                          controller: emailController,
                          textInputAction: TextInputAction.done,
                          obscureText: false,
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
                          textInputAction: TextInputAction.done,
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
                    margin: EdgeInsets.only(right: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Lupa Password?',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14.0),
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
                          onPressed: signIn,
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Belum Punya Akun? Silakan',
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = widget.onClickedSignUp,
                                text: ' Sign Up',
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

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } catch (e) {
      debugPrint('Email or Password Incorrect');
    }
  }
}
