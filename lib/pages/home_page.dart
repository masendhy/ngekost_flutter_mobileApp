import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:several_days/models/city_model.dart';
import 'package:several_days/models/kontrakan_model.dart';
import 'package:several_days/models/space_model.dart';
import 'package:several_days/models/tips_model.dart';
import 'package:several_days/widgets/button_navbar_item.dart';
import 'package:several_days/widgets/city_card.dart';
import 'package:several_days/theme.dart';
import 'package:several_days/widgets/kontrakan_card.dart';
import 'package:several_days/widgets/space_card.dart';
import 'package:several_days/widgets/tips_card.dart';

// halaman home_page.dart digunakan untuk mengkopile seluruh code yang akan di tampilkan aplikasi

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              Padding(
                // NOTE : HEADER
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'KOST KALEELA',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Jl.Rinjani Timur III/05 Mojosongo 47121 - Solo',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              // NOTE : RECOMMENDED ROOM

              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Rekomendasi Kamar Kost ',
                  style: blackTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  SpaceCard(
                    SpaceModel(
                        id: 1,
                        name: 'Premium',
                        imageUrl: 'assets/images/AC dalam.jpeg',
                        price:
                            '${NumberFormat.currency(locale: "id").format(700000)}',
                        stay: '2 Kamar'),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  SpaceCard(
                    SpaceModel(
                        id: 2,
                        name: 'Standard',
                        imageUrl: 'assets/images/km_dalam.jpg',
                        price:
                            '${NumberFormat.currency(locale: "id").format(500000)}',
                        stay: '3 Kamar'),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),

              Column(
                children: [
                  SpaceCard(
                    SpaceModel(
                        id: 3,
                        name: 'Klasik',
                        imageUrl: 'assets/images/non_ac.jpeg',
                        price:
                            '${NumberFormat.currency(locale: "id").format(300000)}',
                        stay: '7 Kamar'),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  KontrakanCard(
                    KontrakanModel(
                        id: 4,
                        name: 'Rumah Kontrakan',
                        imageUrl: 'assets/images/kost.jpg',
                        price:
                            '${NumberFormat.currency(locale: "id").format(10000000)}',
                        stay: '2 Rumah'),
                  )
                ],
              ),

              SizedBox(
                height: 30,
              ),
              // Tempat Popular
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tempat disekitar kamu\nyang sering dikunjungi orang',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.only(left: edge),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(CityModel(
                        id: 1,
                        name: 'Tempat Ibadah',
                        imageUrl: 'assets/images/masjid.jpeg')),
                    SizedBox(
                      width: 30,
                    ),
                    CityCard(CityModel(
                        id: 2,
                        name: 'Klinik',
                        imageUrl: 'assets/images/klinik.jpeg')),
                    SizedBox(
                      width: 30,
                    ),
                    CityCard(CityModel(
                        id: 3,
                        name: 'Mini Market',
                        imageUrl: 'assets/images/mini_market.jpg')),
                    SizedBox(
                      width: 30,
                    ),
                    CityCard(CityModel(
                        id: 4,
                        name: 'Warung Makan',
                        imageUrl: 'assets/images/angkringan.jpg')),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips buat kamu  ',
                  style: blackTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(TipsModel(
                        id: 1,
                        imageUrl: 'assets/test.png',
                        title: 'Angkringan\njadi favorit\nmakan malam ',
                        upDateAt: '20 Oktober')),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(TipsModel(
                        id: 2,
                        imageUrl: 'assets/test2.png',
                        title: 'Jalur angkot\ndi mojosongo',
                        upDateAt: '11 November'))
                  ],
                ),
              ),
              SizedBox(
                height: 60 + edge,
              ),
            ],
          )),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 243, 243, 243),
            borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
