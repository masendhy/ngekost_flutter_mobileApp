// halaman space_model.dart digunakan untuk membuat required class yang akan digunakan di halaman home_page.dart

class SpaceModel {
  int id;
  String name;
  String imageUrl;
  String stay;
  String price;

  SpaceModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price,
      required this.stay});
}
