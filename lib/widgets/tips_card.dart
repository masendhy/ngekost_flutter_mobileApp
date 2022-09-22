import 'package:flutter/material.dart';
import 'package:several_days/theme.dart';

class TipsCard extends StatelessWidget {
  // const TipsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/test.png',
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
              'Angkringan jadi pilihan\nfavorit makan malam',
              style: blackTextStyle.copyWith(fontSize: 15),
            ),
            Text('Updated 23 Sept', style: greyTextStyle)
          ],
        ),
        SizedBox(
          width: 50,
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
