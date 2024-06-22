import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:moencak_apps/auth_page.dart';
import 'package:moencak_apps/firebase_options.dart';
import 'package:moencak_apps/navbar.dart';
import 'package:moencak_apps/pages/getStarted.dart';
import 'package:moencak_apps/pages/loginPage.dart';
// import 'package:moencak_apps/navbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Moencak());
}

class Moencak extends StatelessWidget {
  const Moencak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moencak',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: GetStarted(),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
        if(snapshot.hasData){
          return NavBar();
        }else{
          return AuthPage();
        }
      }
      )
    );
  }
}

