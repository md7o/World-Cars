class WorldCar {
  final String name;
  final String imageUrl;
  final List<Cars> carItems;

  const WorldCar({
    required this.name,
    required this.imageUrl,
    required this.carItems,
  });
}

// ignore: camel_case_types
class popularsCar {
  final String backgroundImg;
  final String title;
  final String selling;

  const popularsCar({
    required this.backgroundImg,
    required this.title,
    required this.selling,
  });
}

class Cars {
  final String carImage;
  final String carName;

  const Cars({
    required this.carImage,
    required this.carName,
  });
}
