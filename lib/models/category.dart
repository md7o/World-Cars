import 'world_car.dart';

class Category {
  final String label;
  final String img;
  // ignore: non_constant_identifier_names
  final String CountryId;
  final List<WorldCar> items;

  Category({
    required this.label,
    required this.img,
    // ignore: non_constant_identifier_names
    required this.CountryId,
    required this.items,
  });
}

class CategoryT {
  const CategoryT({
    required this.id,
    required this.title,
    required this.cityLogo,
    required this.img,
  });

  final String id;
  final String title;
  final String cityLogo;
  final String img;
}
