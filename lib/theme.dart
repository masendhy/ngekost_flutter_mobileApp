//theme.dart halama ini digunakan untuk membuat membuat variable yang sekiranya akan digunakan berulangkali, sehingga tidak perlu menggunakan code yang panjang  saat menggunakannya, cukup dengan cara memanggil variabel nya

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

Color redColor = Color.fromARGB(255, 255, 0, 0);
Color orangeColor = Colors.amber;
Color pinkColor = Color(0xFFFF5B5B);
Color blackColor = Color(0xff000000);
Color whiteColor = Color(0xffFFFFFF);
Color greyColor = Color(0xff7A7E86);

TextStyle blackTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.w500, color: blackColor);
TextStyle whiteTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.w500, color: whiteColor);
TextStyle greyTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.w300, color: greyColor);
TextStyle redTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.w500, color: redColor);
TextStyle orangeTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.w500, color: orangeColor);
TextStyle logoTextStyle = GoogleFonts.justMeAgainDownHere(
    fontWeight: FontWeight.w500, color: redColor);

double edge = 24;
