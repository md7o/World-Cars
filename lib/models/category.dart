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
