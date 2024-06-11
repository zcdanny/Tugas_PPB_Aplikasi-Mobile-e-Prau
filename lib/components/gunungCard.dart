import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/constant.dart';
import 'package:moencak_apps/static/gunung.dart';
import 'package:moencak_apps/pages/detailGunung.dart';

class GunungCard extends StatelessWidget {
  final gunung mount;
  const GunungCard({Key? key, required this.mount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, bottom: 8, top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 84,
                    height: 84,
                    child: Image.asset(
                      mount.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mount.name,
                          style: TextStyle(fontSize: 14, fontWeight: semiBold),
                          // style: Paragraph4.copyWith(color: text4),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 16,
                              color: text3,
                            ),
                            Text(
                              mount.location,
                              style: TextStyle(fontSize: 12, color: text3),
                              // style: Heading4.copyWith(color: text1),
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 20,
                    color: Colors.red,
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class GunungList extends StatelessWidget {
  const GunungList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: ((context, index) {
        final gunung mount = gunungList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return DetailGunung(detailGunung: mount);
              },
            ));
          },
          child: GunungCard(mount: mount),
        );
      }),
      itemCount: gunungList.length,
    );
  }
}
