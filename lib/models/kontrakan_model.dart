import 'package:flutter/material.dart';

class KontrakanModel {
  int id;
  String name;
  String imageUrl;
  String stay;
  String price;

  KontrakanModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price,
      required this.stay});
}
