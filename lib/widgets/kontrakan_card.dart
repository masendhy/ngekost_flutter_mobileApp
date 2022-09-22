import 'package:flutter/material.dart';
import 'package:several_days/models/kontrakan_model.dart';
import 'package:several_days/models/space_model.dart';
import 'package:several_days/theme.dart';

class KontrakanCard extends StatelessWidget {
  //const SpaceCard({super.key});

  KontrakanModel space;

  KontrakanCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  children: [TextSpan(text: '/ Tahun', style: greyTextStyle)])),
              SizedBox(
                height: 15,
              ),
              Text(
                space.stay,
                style: greyTextStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
