import 'world_car.dart';

class Category {
  final String label;
  final String img;
  final String CountryId;
  final List<WorldCar> items;

  Category({
    required this.label,
    required this.img,
    required this.CountryId,
    required this.items,
  });
}

class CategoryT {
  const CategoryT({
    required this.id,
    required this.cityName,
    required this.cityLogo,
    required this.img,
    required this.facts,
    required this.cardFace,
  });

  final String id;
  final String cityName;
  final String cityLogo;
  final String img;
  final List<String> facts;
  final List<String> cardFace;
}
