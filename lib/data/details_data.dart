import 'package:world_car/models/category.dart';

import '../models/car.dart';

const availableCategories = [
  CategoryT(
    id: 'c1',
    title: 'Germany',
    cityLogo: "https://cdn-icons-png.flaticon.com/512/197/197571.png",
    img: "images/GermanyC.png",
  ),
  // Category(
  //   id: 'c2',
  //   title: 'Quick & Easy',
  //   cityLogo: cityLogos.red,
  // ),
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
      'Cook the oil, garlic, 1/2 teaspoon salt',
    ],
  ),
];
