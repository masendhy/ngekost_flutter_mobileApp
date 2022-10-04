import 'package:flutter/material.dart';
import 'package:several_days/models/space_model.dart';
import 'package:several_days/pages/detail_page.dart';
import 'package:several_days/theme.dart';

// halaman space_card.dart untuk membuat seluruh code pada section kamar kost yang kemudian akan dipanggil dan ditampilkan melalui halaman home_page.dart

class SpaceCard extends StatelessWidget {
  //const SpaceCard({super.key});

  SpaceModel space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => DetailPage())),
      child: Padding(
        padding: EdgeInsets.only(left: edge),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
              child: Container(
                width: 90,
                height: 110,
                child: Stack(children: [
                  Image.asset(space.imageUrl),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        color: pinkColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: whiteColor,
                          ),
                        ],
                      )),
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  space.name,
                  style: blackTextStyle.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 2,
                ),
                Text.rich(TextSpan(
                    text: '${space.price}',
                    style: orangeTextStyle.copyWith(fontSize: 16),
                    children: [
                      TextSpan(text: '/ Bulan', style: greyTextStyle)
                    ])),
                SizedBox(
                  height: 5,
                ),
                Text(
                  space.stay,
                  style: greyTextStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
