class definitionCar {
  final String carImage;
  final String carName;

  const definitionCar({
    required this.carImage,
    required this.carName,
  });
}

class Car {
  const Car({
    required this.id,
    required this.categories,
    required this.title,
    required this.imgAssets,
    required this.definition,
    required this.steps,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imgAssets;
  final List<definitionCar> definition;
  final List<String> steps;
}
