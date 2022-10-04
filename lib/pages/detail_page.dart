import 'package:flutter/material.dart';
import 'package:several_days/theme.dart';
import 'package:several_days/widgets/facility_item.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
//  const DetailPage({super.key});
  final Uri _url = Uri.parse('https://goo.gl/maps/NEYrjvJiAGt5GTzn7');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  final Uri _phone = Uri.parse('tel:+628562985589');
  Future<void> _launcPhoneUrl() async {
    if (!await launchUrl(_phone)) {
      throw 'Could not launc $_phone';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/kontrakan.jpg',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 330,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: edge, vertical: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rumah Kontrakan',
                                  style: blackTextStyle.copyWith(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(TextSpan(
                                    text: '${52}',
                                    style:
                                        orangeTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: '/ Tahun', style: greyTextStyle)
                                    ])),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.grade,
                                  color: orangeColor,
                                ),
                                Icon(
                                  Icons.grade,
                                  color: orangeColor,
                                ),
                                Icon(
                                  Icons.grade,
                                  color: orangeColor,
                                ),
                                Icon(
                                  Icons.grade,
                                  color: orangeColor,
                                ),
                                Icon(
                                  Icons.grade,
                                  color: greyColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text('Fasilitas',
                            style: blackTextStyle.copyWith(fontSize: 16)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              facility: 'Dapur',
                              imageUrl: 'assets/kitchen.png',
                              items: 1,
                            ),
                            FacilityItem(
                              facility: 'Kamar Tidur',
                              imageUrl: 'assets/bed_room.png',
                              items: 2,
                            ),
                            FacilityItem(
                              facility: 'Lemari',
                              imageUrl: 'assets/wardrobe.png',
                              items: 1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photo',
                          style: blackTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 110,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: edge,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'assets/ruang_tamu.jpeg',
                                  width: 110,
                                  height: 110,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/kamar_tidur.jpeg',
                                  width: 110,
                                  height: 110,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/kamar_mandi.jpeg',
                                  width: 110,
                                  height: 110,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Lokasi',
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jalan Rinjani Timur III\nMojosongo - Solo 57127',
                        style: greyTextStyle,
                      ),
                      InkWell(
                        onTap: _launchUrl,
                        child: Icon(
                          Icons.room,
                          color: greyColor,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: edge),
                    height: 50,
                    width: MediaQuery.of(context).size.width - (2 * edge),
                    child: ElevatedButton(
                      child: Text(
                        'Pesan Sekarang',
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      ),
                      onPressed: () {
                        _launcPhoneUrl();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: redColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 40,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
