import 'package:world_car/models/category.dart';
import 'package:world_car/models/world_car.dart';

final data = {
  Category(
    img: "images/germany.png",
    label: "Germany",
    items: const [
      WorldCar(
        imageUrl: "images/mercedes.png",
        name: "Mercedes ",
        carItems: [
          Cars(
            carImage: 'images/BenzC.jpg',
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
                detailName: 'Car Fule:',
                detailPhoto: 'images/gas.png',
                detailInfo: 'Petrol',
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
            carImage: 'images/BenzG.jpg',
            carName: 'Mercedes G-class',
            details: [
              Details(
                detailName: '199',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199',
              )
            ],
          ),
          Cars(
            carImage: 'images/BenzCLA.jpg',
            carName: 'Mercedes CLA-class',
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
        imageUrl: "images/volks.png",
        name: "Volkswagen ",
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
        imageUrl: "images/bmw.png",
        name: "BMW",
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
        imageUrl: "images/Porsche.png",
        name: "Porsche",
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
            '(renamed Benz & Cie. in 1899) is founded in Mannheim by Carl Benz in October 1883 in collaboration with businessman Max Kaspar Rose.',
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
    img: "images/japan.png",
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
    img: "images/usa.png",
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
        imageUrl: "images/Lencon.png",
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
    img: "images/korea.png",
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
        imageUrl: "images/Rena.png",
        name: "Renault ",
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
