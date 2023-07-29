import 'package:world_car/models/category.dart';

import '../models/car.dart';

const availableCategories = [
  CategoryT(
    id: 'c1',
    cityName: 'Germany',
    cityLogo: "https://cdn-icons-png.flaticon.com/512/197/197571.png",
    img: "images/GermanyC.png",
    facts: [
      'The most popular car in Germany in 2021-2023 is Volkswagen',
      'Benz in 1899 is founded in Mannheim by Carl Benz in October 1883 in collaboration',
    ],
    cardFace: [
      'images/volks.png',
      'images/benz.png',
    ],
  ),
  CategoryT(
    id: 'c2',
    cityName: 'Japan',
    cityLogo: "https://cdn-icons-png.flaticon.com/512/197/197604.png",
    img: "images/JapanC.png",
    facts: [
      'Cook the oil, garlic, 1/2 teaspoon salt',
      'Octane is the best car in rocket league',
    ],
    cardFace: [
      'Cook the oil, garlic, 1/2 teaspoon salt',
      'Octane is the best car in rocket league',
    ],
  ),
  // Category(
  //   id: 'c3',
  //   title: 'Burgers',
  //   cityLogo: cityLogos.orange,
  // ),
  // Category(
  //   id: 'c4',
  //   title: 'German',
  //   cityLogo: cityLogos.amber,
  // ),
];

const detailsCar = [
  Car(
    id: 'd1',
    categories: [
      'c1',
    ],
    title: 'Mercedes',
    imgAssets: 'images/mercedes.png',
    definition: [
      definitionCar(
        carName: 'Mercedes C-class',
        carImage:
            'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_fq_oem_1_815.jpg',
      ),
    ],
    steps: [
      'The most popular car in Germany in 2021-2023 is Volkswagen',
      'OBenz in 1899 is founded in Mannheim by Carl Benz in October 1883 in collaboration',
    ],
  ),
  Car(
    id: 'd2',
    categories: [
      'c1',
    ],
    title: 'Volkswagen',
    imgAssets: 'images/volks.png',
    definition: [
      definitionCar(
        carName: 'Mercedes C-class',
        carImage:
            'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_fq_oem_1_815.jpg',
      ),
    ],
    steps: [
      'Cook the oil, garlic, 1/2 teaspoon salt',
    ],
  ),
  Car(
    id: 'd3',
    categories: [
      'c1',
    ],
    title: 'BMW',
    imgAssets: 'images/bmw.png',
    definition: [
      definitionCar(
        carName: 'Mercedes C-class',
        carImage:
            'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_fq_oem_1_815.jpg',
      ),
    ],
    steps: [
      'Cook the oil, garlic, 1/2 teaspoon salt',
    ],
  ),
  Car(
    id: 'd4',
    categories: [
      'c1',
    ],
    title: 'Audi',
    imgAssets: 'images/audi.png',
    definition: [
      definitionCar(
        carName: 'Mercedes C-class',
        carImage:
            'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_fq_oem_1_815.jpg',
      ),
    ],
    steps: [
      'Cook the oil, garlic, 1/2 teaspoon salt',
    ],
  ),
];
