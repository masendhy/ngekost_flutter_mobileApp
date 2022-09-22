import 'package:flutter/material.dart';
import 'package:several_days/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  // const BottomNavbarItem({super.key});
  String imageUrl;
  bool isActive;

  BottomNavbarItem({required this.imageUrl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: pinkColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(1000))),
              )
            : Container(),
      ],
    );
  }
}
