//first list
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

//first list
//=================
//second list
class Cars {
  final String carImage;
  final String carName;
  final List<Details> details;

  const Cars({
    required this.carImage,
    required this.carName,
    required this.details,
  });
}

//second list
//=================
//third list
class Details {
  final String lengthCar;
  final String made;
  final String type;
  final String speed;

  const Details({
    required this.lengthCar,
    required this.made,
    required this.type,
    required this.speed,
  });
}

//third list
//=================
class PopularsCar {
  final String backgroundImg;
  final String title;
  final String selling;

  const PopularsCar({
    required this.backgroundImg,
    required this.title,
    required this.selling,
  });
}
