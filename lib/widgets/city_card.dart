import 'package:flutter/material.dart';
import 'package:several_days/models/city_model.dart';
import 'package:several_days/theme.dart';

class CityCard extends StatelessWidget {
  // const CityCard({super.key});
  CityModel city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 120,
      color: Color.fromARGB(255, 240, 240, 240),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Column(
          children: [
            Image.asset(
              city.imageUrl,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(
                  fontSize: 13, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
