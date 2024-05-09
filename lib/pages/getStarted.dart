import 'package:flutter/material.dart';
import 'package:moencak_apps/main.dart';
import 'package:moencak_apps/pages/loginPage.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: Image.asset(
                  'images/logo-nav.png',
                  height: 100,
                )),
            Container(
              margin: EdgeInsets.only(left: 45),
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lets Start Your Journey',
                    style: TextStyle(fontSize: 32),
                  ),
                  Container(
                    height: 12,
                  ),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.',
                      style: TextStyle(fontSize: 14, color: Colors.black54))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 45),
              padding: EdgeInsets.only(top: 32),
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF968264)
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn())
                      );
                    },
                    child: Text('Get Started'),
                  ),
                ],
              ),
            ),
            Container(
              // height: 174,
                margin: EdgeInsets.only(top: 15),
                child: Image.asset(
                  'images/started.png',
                  fit: BoxFit.fitWidth,
                )),
          ],
        ),
      ),
    );
  }
}
