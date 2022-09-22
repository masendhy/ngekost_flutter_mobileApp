import 'package:flutter/material.dart';
import 'package:several_days/pages/home_page.dart';
import 'package:several_days/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/K_logo.png'))),
                  ),
                  Text(
                    'KALEELA',
                    style: logoTextStyle.copyWith(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/images/kost.jpg',
                      width: 300,
                      height: 200,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Temukan kamar\nyang nyaman\ndan menyenangkan',
                  style: blackTextStyle.copyWith(fontSize: 24)),
              SizedBox(
                height: 30,
              ),
              Text(
                'Stop buang buang waktu \nhanya untuk tempat yang tidak habitable',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 210,
                height: 50,
                child: ElevatedButton(
                  child: Text(
                    'Kunjungi sekarang',
                    style: whiteTextStyle.copyWith(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: redColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17))),
                ),
              ),
              SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
