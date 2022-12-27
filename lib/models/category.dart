import 'world_car.dart';

class Category {
  final String label;
  final String img;
  final List<WorldCar> items;

  Category({
    required this.label,
    required this.img,
    required this.items,
  });
}

class FamousList {
  final List<FamousCar> Listy;

  FamousList({
    required this.Listy,
  });
}
