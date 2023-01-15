import 'package:world_car/models/category.dart';
import 'package:world_car/models/world_car.dart';

final data = {
  Category(
    img: "images/GermanyC.png",
    CountryId: "images/germany.png",
    label: "Germany",
    items: const [
      WorldCar(
        imageUrl: "images/mercedes.png",
        name: "Mercedes ",
        carItems: [
          Cars(
            carImage:
                'https://carsguide-res.cloudinary.com/image/upload/f_auto%2Cfl_lossy%2Cq_auto%2Ct_default/v1/editorial/2021-Mercedes-AMG-C-63-S-1001x565_0.jpg',
            carName: 'Mercedes C-class',
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '188 Inch',
              ),
              Details(
                detailName: 'Made in:',
                detailPhoto: 'images/backTime.png',
                detailInfo: 'June 1993',
              ),
              Details(
                detailName: 'Max speed:',
                detailPhoto: 'images/speedometer.png',
                detailInfo: '250 Km/h',
              ),
              Details(
                detailName: 'Cylinder',
                detailPhoto: 'images/cylinder.png',
                detailInfo: '4V',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '255-503 ',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$42,000',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'Automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://images.pistonheads.com/nimg/44784/Large-39354-G400d.jpg',
            carName: 'Mercedes G-class',
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '191.9 Inch',
              ),
              Details(
                detailName: 'Made in:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1979',
              ),
              Details(
                detailName: 'Max speed:',
                detailPhoto: 'images/speedometer.png',
                detailInfo: '240 Km/h',
              ),
              Details(
                detailName: 'Cylinders',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V8',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '577 ',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$156,450',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'shiftable automatic',
              ),
            ],
          ),
          Cars(
            carImage: 'https://www.elbalad.news/Upload/libfiles/887/9/756.jpg',
            carName: 'Mercedes CLA-class',
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '184.6 Inch',
              ),
              Details(
                detailName: 'Made in:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2013',
              ),
              Details(
                detailName: 'Max speed:',
                detailPhoto: 'images/speedometer.png',
                detailInfo: '250 Km/h',
              ),
              Details(
                detailName: 'Cylinder',
                detailPhoto: 'images/cylinder.png',
                detailInfo: '4V',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '221 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$39,645',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'Automatic manual',
              ),
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/volks.png",
        name: "Volkswagen ",
        carItems: [
          Cars(
            carImage:
                'https://hips.hearstapps.com/hmg-prod/images/2021-volkswagen-passat-mmp-1-1597868992.jpg',
            carName: 'Passat',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          ),
          Cars(
            carImage:
                'https://hogstavaxeln.se/wp-content/uploads/2021/06/Volkswagen-Touareg-R-black-04.jpg',
            carName: 'Touareg',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          ),
          Cars(
            carImage:
                'https://images.hgmsites.net/hug/2021-volkswagen-arteon_100814104_h.jpg',
            carName: 'Arteon ',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/bmw.png",
        name: "BMW",
        carItems: [
          Cars(
            carImage:
                'https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/99-bmw-m5-cs-2021-official-reveal-hero-front.jpg?itok=NUo_lK53',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          ),
          Cars(
            carImage:
                'https://www.topgear.com/sites/default/files/2021/11/BMW%20X4M%20Sao%20Paulo%20Yellow%20013.jpg',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          ),
          Cars(
            carImage:
                'https://cdn.carbuzz.com/gallery-images/2021-bmw-m2-carbuzz-500647.jpg',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/audi.png",
        name: "Audi",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/KIA.png",
        name: "The most popular car in Germany in 2021-2022 is Volkswagen",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/benz.png",
        name:
            ' Benz in 1899 is founded in Mannheim by Carl Benz in October 1883 in collaboration',
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
    ],
  ),
  Category(
    img: "images/JapanC.png",
    CountryId: "images/japan.png",
    label: "Japan",
    items: const [
      WorldCar(
        imageUrl: "images/Honda.png",
        name: "Honda",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/Toyota.png",
        name: "Toyota",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/Mazda.png",
        name: "Mazda",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/Nissan.png",
        name: "Nissan",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/KIA.png",
        name: "The world's best selling car is the Toyota Corolla.",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/toyota_founder.png",
        name:
            "It was founded by Kiichiro Toyoda and incorporated on August 28, 1937 (1937-08-28).",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
    ],
  ),
  Category(
    img: "images/AmericaC.png",
    CountryId: "images/usa.png",
    label: "America",
    items: const [
      WorldCar(
        imageUrl: "images/GMC.png",
        name: "GMC",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/Ford.png",
        name: "Ford",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/Sheforleh.png",
        name: "Sheforleh",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/Lincoln.png",
        name: "Lincoln ",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/KIA.png",
        name: "The second best selling car in the world Ford F-series.",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/lincon_founder.png",
        name:
            "Henry Leland, a founder of the Cadillac auto brand, established the Lincoln Motor Company in 1917.",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
    ],
  ),
  Category(
    img: "images/KoreaC.png",
    CountryId: "images/korea.png",
    label: "Korea",
    items: const [
      WorldCar(
        imageUrl: "images/KIA.png",
        name: "KIA",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/Hyundai.png",
        name: "Hyundai",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/ssang.png",
        name: "SsangYong ",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/Genesis.png",
        name: "Genesis",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/KIA.png",
        name: "The most popular car in South Korea in 2021-2022 is Hyundai.",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
      WorldCar(
        imageUrl: "images/kia_founder.png",
        name:
            "Kia's humble history dates back to 1944. Founder Kim Chul Ho was born in Korea in 1905.",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          )
        ],
      ),
    ],
  ),
};
