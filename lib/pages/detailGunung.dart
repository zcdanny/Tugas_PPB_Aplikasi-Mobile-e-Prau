import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/constant.dart';
import 'package:moencak_apps/static/gunung.dart';

class DetailGunung extends StatelessWidget {
  final gunung detailGunung;
  const DetailGunung({Key? key, required this.detailGunung}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.only(top: 24, right: 24, left: 24),
              child: Stack(
                children: [
                  SizedBox(
                    height: 330,
                    child: Image.asset(
                      width: 500,
                      detailGunung.imageAsset,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: bg2,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: bg1,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, right: 24, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            detailGunung.name,
                            style: TextStyle(fontSize: 24, fontWeight: bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 16,
                                color: text3,
                              ),
                              Text(
                                detailGunung.location,
                                style: TextStyle(fontSize: 12, color: text3),
                                // style: Heading4.copyWith(color: text1),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            detailGunung.price,
                            style: TextStyle(fontSize: 14, fontWeight: bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(fontSize: 20, fontWeight: bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        detailGunung.description,
                        style: TextStyle(fontSize: 14, color: text3),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32))),
                          minimumSize:
                              MaterialStateProperty.all(Size.fromHeight(50)),
                          backgroundColor: MaterialStateProperty.all(bg2)),
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: TextStyle(
                          fontSize: 14,
                          color: bg1,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
