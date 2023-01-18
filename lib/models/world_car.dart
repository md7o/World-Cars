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

class Cars {
  final String carImage;
  final String carName;
  final List<Details> details;
  final List<Slidering> imageSlide;

  const Cars({
    required this.carImage,
    required this.carName,
    required this.details,
    required this.imageSlide,
  });
}

class Slidering {
  final String dimensions;

  const Slidering({
    required this.dimensions,
  });
}

class Details {
  final String detailPhoto;
  final String detailName;
  final String detailInfo;

  const Details({
    required this.detailPhoto,
    required this.detailName,
    required this.detailInfo,
  });
}

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
