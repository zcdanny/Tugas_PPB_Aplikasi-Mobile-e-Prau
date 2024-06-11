import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/pages/loginPage.dart';
import 'package:moencak_apps/pages/signupPage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context)=> isLogin
        ? LoginPage(onClickedSignUp: toogle)
        : SignUpPage(onClickedSignIn: toogle);

    void toogle() => setState(() => isLogin = !isLogin);
}
