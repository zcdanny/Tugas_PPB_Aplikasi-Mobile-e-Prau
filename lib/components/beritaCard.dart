import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/constant.dart';
import 'package:moencak_apps/pages/detailBerita.dart';
import 'package:moencak_apps/pages/detailGunung.dart';
import 'package:moencak_apps/static/berita.dart';

class CardList extends StatelessWidget {
  final berita news;
  const CardList({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, bottom: 8, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: SizedBox(
              width: 84,
              height: 84,
              child: Image.asset(
                news.imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.judul,
                    style: TextStyle(fontSize: 14, fontWeight: semiBold),
                    // style: Paragraph4.copyWith(color: text4),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Read More",
                    style: TextStyle(fontSize: 12, color: Color(0xFF20774D)),
                    // style: Heading4.copyWith(color: text1),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class BeritaList extends StatelessWidget {
  const BeritaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: ((context, index) {
        final berita news = beritaList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return DetailBerita();
              },
            ));
          },
          child: CardList(news: news),
        );
      }),
      itemCount: beritaList.length,
    );
  }
}
