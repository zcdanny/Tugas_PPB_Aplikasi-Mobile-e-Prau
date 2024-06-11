import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/constant.dart';
import 'package:moencak_apps/pages/editProfil.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: bg2,
                    size: 24,
                  ),
                  SizedBox(
                    width: 72,
                  ),
                  Text(
                    'My Profile',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: bold, color: bg2),
                  ),
                  SizedBox(
                    width: 72,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (contex) {
                        return EditProfil();
                      }));
                    },
                    child: Icon(
                      Icons.border_color_outlined,
                      color: Color(0xFF20774D),
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24, left: 16),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: 84,
                      height: 84,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/ria.JPG'),
                        radius: 50,
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ria Kusmara',
                          style: TextStyle(
                              fontSize: 20, fontWeight: extraBold, color: bg2),
                        ),
                        Text(
                          'Pendaki Pemula',
                          style: TextStyle(
                              fontSize: 12, fontWeight: regular, color: text3),
                        )
                      ],
                    ))
              ]),
            ),
            Container(
              margin: EdgeInsets.all(24),
              padding: EdgeInsets.only(top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Lengkap',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ria Kusmara',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        user.email!,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Domisili',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Jakarta',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No. Telepon',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '085880578318',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: () => FirebaseAuth.instance.signOut(),
                  child: Text('Logout', style: TextStyle(color: bg1)),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                      backgroundColor: MaterialStateProperty.all(bg2)),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}


