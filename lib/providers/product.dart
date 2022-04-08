import 'package:flutter/foundation.dart';

class Product  with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {required this.imageUrl,
      required this.price,
      required this.description,
      required this.title,
      this.isFavorite = false,
      required this.id});

  void toggleFavouriteStatus(){
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
