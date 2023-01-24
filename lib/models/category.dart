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
