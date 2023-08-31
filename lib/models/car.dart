class Car {
  const Car({
    required this.id,
    required this.categories,
    required this.title,
    required this.imgAssets,
    required this.assortment,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imgAssets;
  final List<Assortment> assortment;
}

class Assortment {
  final String id;
  final String carImage;
  final String carName;
  final List<Sliding> slideAblum;
  final List<Details> details;
  const Assortment({
    required this.id,
    required this.carImage,
    required this.carName,
    required this.details,
    required this.slideAblum,
  });
}

///////// Inside Assortment //////////
class Sliding {
  final String sliding;

  const Sliding({
    required this.sliding,
  });
}

class Details {
  // final String id;
  final String detailPhoto;
  final String detailName;
  final String detailInfo;

  const Details({
    // required this.id,
    required this.detailPhoto,
    required this.detailName,
    required this.detailInfo,
  });
}
///////// Inside Assortment //////////

// ==================================================================== //

class topSeller {
  final String id;
  final String title;
  final String sales;
  final String backgroundImg;
  final String country;
  final String countryImg;

  const topSeller({
    required this.id,
    required this.title,
    required this.sales,
    required this.backgroundImg,
    required this.country,
    required this.countryImg,
  });
}
