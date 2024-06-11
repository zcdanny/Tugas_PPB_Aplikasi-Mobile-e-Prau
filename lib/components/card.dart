import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/pages/detailGunung.dart';
import 'package:moencak_apps/pages/editProfil.dart';
import 'package:moencak_apps/static/gunung.dart';

class CardTopTrip extends StatelessWidget {
  final String foto;
  final String nama;
  final String lokasi;
  const CardTopTrip(
      {Key? key, required this.nama, required this.lokasi, required this.foto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        margin: const EdgeInsets.only(left: 24),
        height: 172,
        width: 258,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Color(0xff313131).withOpacity(0.1), offset: Offset(0, 4))
        ]),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 120,
              width: 258,
              child: Image.asset(
                foto,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (contex) {
                              return EditProfil();
                            }));
                          },
                          child: Text(
                            nama,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          lokasi,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xFFEBEF37),
                        ),
                        Text(
                          '4.8',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
