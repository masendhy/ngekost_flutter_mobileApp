import 'package:flutter/material.dart';
import 'package:several_days/models/tips_model.dart';
import 'package:several_days/theme.dart';

class TipsCard extends StatelessWidget {
  // const TipsCard({super.key});

  TipsModel tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 50,
          height: 50,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 15),
            ),
            Text(tips.upDateAt, style: greyTextStyle)
          ],
        ),
        SizedBox(
          width: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.navigate_next,
            color: greyColor,
          ),
        )
      ],
    );
  }
}
