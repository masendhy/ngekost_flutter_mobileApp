import 'package:flutter/material.dart';

import '../theme.dart';

class FacilityItem extends StatelessWidget {
  //  const FacilityItem({super.key});

  final String facility;
  final String imageUrl;
  final int items;

  FacilityItem(
      {required this.facility, required this.imageUrl, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(TextSpan(
            text: '$items',
            children: [TextSpan(text: ' $facility', style: greyTextStyle)])),
      ],
    );
  }
}
