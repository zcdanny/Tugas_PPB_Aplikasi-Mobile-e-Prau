import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/constant.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
              margin: EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back,
                    color: bg2,
                    size: 24,
                  ),
                  SizedBox(
                    width: 72,
                  ),
                  Text(
                    'Favorit',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: bold, color: bg2),
                  ),
                  SizedBox(
                    width: 72,
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFF20774D),
                    size: 24,
                  ),
                ],
              ),
            ),
            Container()
            ],
          ),
        ),
      )
    );
  }
}
