import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/components/gunungCard.dart';
import 'package:moencak_apps/constant.dart';

class GunungPage extends StatelessWidget {
  const GunungPage({Key? key}) : super(key: key);

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
                    width: 72,
                  ),
                  Text(
                    'List Gunung',
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
              Container(
              width: 600,
              height: 153,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: bg2,
                    image: DecorationImage(
                        image: AssetImage(
                          'images/gunung3.jpg'
                          ),
                        fit: BoxFit.cover,
                        alignment: Alignment.center
                      )
                    ),
                    margin: EdgeInsets.only(top: 8, right: 16, left: 16),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gunung Merbabu',
                                style: TextStyle(
                                  fontSize: 20, 
                                  color: secondary,
                                  fontWeight: bold
                                ),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit.',
                                style: TextStyle(
                                  fontSize: 12, 
                                  color: secondary,
                                  fontWeight: regular
                                ),
                              ),
                            ],
                          )
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                            ElevatedButton(
                            onPressed: () {},
                            child:
                                Text(
                                  'See More', 
                                  style: TextStyle(
                                    color: bg2,
                                    fontSize: 10
                                  )
                                ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32)
                                  )
                                ),
                              backgroundColor:MaterialStateProperty.all(Color(0xffF6F6F6))
                            ),
                            )
                            ],
                          ),
                        )
                      ],
                    )
            ),
            GunungList()
            ],
          ),
        )
      ),
    );
  }
}

