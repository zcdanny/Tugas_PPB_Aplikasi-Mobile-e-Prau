import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/constant.dart';

class EditProfil extends StatefulWidget {
  const EditProfil({Key? key}) : super(key: key);

  @override
  State<EditProfil> createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  final controllerNama = TextEditingController();
  final controllerDomisili = TextEditingController();
  final controllerTelepon = TextEditingController();

  @override
  void dispose() {
    controllerNama.dispose();
    controllerDomisili.dispose();
    controllerTelepon.dispose();
  }

  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: bg2,
                      size: 24,
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    'Edit Profile',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: bold, color: bg2),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 24, left: 16),
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/ria.JPG'),
                    radius: 50,
                  ),
                )) // Expanded(child: child)
            ,
            Container(
              margin: EdgeInsets.all(32),
              child: Column(
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
                      TextField(
                        controller: controllerNama,
                        // textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Ria Kusmara',
                            labelStyle: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
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
                      TextField(
                        // textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'ria@gmail.com',
                            labelStyle: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
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
                      TextField(
                        controller: controllerDomisili,
                        // textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Jakarta',
                            labelStyle: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
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
                      TextField(
                        controller: controllerTelepon,
                        // textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: '085880578318',
                            labelStyle: TextStyle(fontSize: 12)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      final profil = User(
                          name: controllerNama.text.trim(),
                          domisili: controllerDomisili.text.trim(),
                          telepon: controllerTelepon.text.trim());
                          createUser(profil);
                    });
                    
                    Navigator.pop(context);
                  },
                  child: Text('Simpan', style: TextStyle(color: bg1)),
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

// Future addDetails() async {
//   addUserDetail(
//     controllerNama.text.trim(), 
//     controllerDomisili.text.trim(),
//     controllerTelepon.text.trim()
//     );
// }

Future addUserDetail(String nama, String domisili, String telp) async {
  await FirebaseFirestore.instance.collection('users').add({
    'nama': nama,
    'domisili': domisili,
    'telp': telp,
    
  });
}

Future createUser(User profil) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc();
  profil.id = docUser.id;

  final json = profil.toJson();
  await docUser.set(json);
}

class User {
  String id;
  final String name;
  final String domisili;
  final String telepon;

  User({
    this.id = '',
    required this.name,
    required this.domisili,
    required this.telepon,
  });

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'domisili': domisili, 'telepon': telepon};
}
