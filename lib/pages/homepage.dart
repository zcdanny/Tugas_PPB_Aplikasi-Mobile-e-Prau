import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/components/card.dart';
import 'package:moencak_apps/components/beritaCard.dart';
import 'package:moencak_apps/components/gunungCard.dart';
import 'package:moencak_apps/constant.dart';
import 'package:moencak_apps/navbar.dart';
import 'package:moencak_apps/pages/detailGunung.dart';
import 'package:moencak_apps/pages/gunungList.dart';
import 'package:moencak_apps/static/berita.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.format_align_left,
                                color: bg2,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Hai, Para Pendaki',
                                style:
                                    TextStyle(fontSize: 18.0, fontWeight: bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.notifications,
                              color: Color(0xFF20774D),
                              size: 24,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16.0),
                              width: 5.0,
                            ),
                            Icon(
                              Icons.search,
                              color: Color(0xFF20774D),
                              size: 24,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 600,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: bg2,
                    image: DecorationImage(
                        image: AssetImage('images/gunung3.jpg'),
                        fit: BoxFit.cover,
                        alignment: Alignment.center)),
                margin: EdgeInsets.only(top: 8, right: 24, left: 24),
                padding: EdgeInsets.all(18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Open Trip Gunung Merbabu \nDiscount Up to 30%',
                        style: TextStyle(
                            fontSize: 20, color: secondary, fontWeight: bold),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Order Now', style: TextStyle(color: bg2)),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32))),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffF6F6F6))),
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.asset('images/menu-1.png'),
                          Container(
                            height: 4.0,
                          ),
                          Text(
                            'SIMAKSI',
                            style: TextStyle(fontSize: 12, fontWeight: medium),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (contex) {
                          return GunungPage();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Image.asset('images/menu-2.png'),
                            Container(
                              height: 4.0,
                            ),
                            Text(
                              'Gunung',
                              style:
                                  TextStyle(fontSize: 12, fontWeight: medium),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.asset('images/menu-3.png'),
                          Container(
                            height: 4.0,
                          ),
                          Text(
                            'Info',
                            style: TextStyle(fontSize: 12, fontWeight: medium),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.asset('images/menu-4.png'),
                          Container(
                            height: 4.0,
                          ),
                          Text(
                            'Artikel',
                            style: TextStyle(fontSize: 12, fontWeight: medium),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular Trip',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: bold, color: bg2),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return GunungPage();
                          },
                        ));
                      },
                      child: Text(
                        'See More',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: regular,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardTopTrip(
                      foto: 'images/ijen.png',
                      nama: 'Kawah Ijen',
                      lokasi: 'Banyuwangi, Jawa Timur',
                    ),
                    CardTopTrip(
                        foto: 'images/raung.png',
                        nama: 'Raung',
                        lokasi: 'Banyuwangi, Jawa Timur'),
                    CardTopTrip(
                        foto: 'images/gunung6.png',
                        nama: 'Gede Pangrango',
                        lokasi: 'Cibodas, Jawa Timur')
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Recent News',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: bold, color: bg2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              BeritaList()
            ],
          ),
        ),
      ),
    );
  }
}
