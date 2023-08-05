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
  // Mercedes ===================

  Car(
    id: 'd1',
    categories: [
      'c1',
    ],
    title: 'Mercedes',
    imgAssets: 'images/mercedes.png',
    assortment: [
      Assortment(
        carName: 'Mercedes C-class',
        carImage:
            'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_fq_oem_1_815.jpg',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_f_oem_2_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_r_oem_2_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_s_oem_2_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_d_oem_1_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght :',
            detailPhoto: 'images/ruler.png',
            detailInfo: '187 Inch',
          ),
          Details(
            detailName: 'Production :',
            detailPhoto: 'images/backTime.png',
            detailInfo: 'June 1993',
          ),
          Details(
            detailName: 'Fuel tank :',
            detailPhoto: 'images/tank.png',
            detailInfo: '17.4 gal',
          ),
          Details(
            detailName: 'Cylinder  :',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V4',
          ),
          Details(
            detailName: 'Horsepower :',
            detailPhoto: 'images/engine.png',
            detailInfo: '255 hp',
          ),
        ],
      ),
      Assortment(
        carName: 'Mercedes G-class',
        carImage:
            'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_fq_oem_3_815x543.jpg',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_f_oem_3_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_r_oem_2_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_s_oem_2_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_d_oem_1_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '187 Inch',
          )
        ],
      ),
      Assortment(
        carName: 'Mercedes CLA-class',
        carImage:
            'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_fq_oem_1_815x543.jpg',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_f_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_r_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_s_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_d_oem_1_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '187 Inch',
          )
        ],
      ),
      Assortment(
        carName: 'Mercedes S-class',
        carImage:
            'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-500-4matic_fq_oem_3_1600x1067.jpg',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-500-4matic_f_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-500-4matic_r_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-500-4matic_s_oem_2_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-580-4matic_detail_oem_5_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-580-4matic_i_oem_1_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '187 Inch',
          )
        ],
      ),
    ],
  ),

  // Mercedes ===================
// ---------------------------------------------------------
// Volkswagen ===================
  // Car(
  //   id: 'd2',
  //   categories: [
  //     'c1',
  //   ],
  //   title: 'Volkswagen',
  //   imgAssets: 'images/volks.png',
  //   assortment: [
  //     Assortment(
  //       carName: 'Passat',
  //       carImage:
  //           'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_fq_oem_2_815x543.jpg',
  //     ),
  //     Assortment(
  //       carName: 'Touareg',
  //       carImage:
  //           'https://hogstavaxeln.se/wp-content/uploads/2021/06/Volkswagen-Touareg-R-black-04.jpg',
  //     ),
  //     Assortment(
  //       carName: 'Arteon',
  //       carImage:
  //           'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_fq_oem_2_815x543.jpg',
  //     ),
  //     Assortment(
  //       carName: 'Jetta',
  //       carImage:
  //           'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_fq_oem_3_815x543.jpg',
  //     ),
  //   ],
  // ),
  // Car(
  //   id: 'd3',
  //   categories: [
  //     'c1',
  //   ],
  //   title: 'BMW',
  //   imgAssets: 'images/bmw.png',
  //   assortment: [
  //     Assortment(
  //       carName: 'Volk ',
  //       carImage:
  //           'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_fq_oem_2_815x543.jpg',
  //     ),
  //   ],
  // ),
  // Car(
  //   id: 'd4',
  //   categories: [
  //     'c1',
  //   ],
  //   title: 'Audi',
  //   imgAssets: 'images/audi.png',
  //   assortment: [
  //     Assortment(
  //       carName: 'Mercedes C-class',
  //       carImage:
  //           'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_fq_oem_1_815.jpg',
  //     ),
  //   ],
  // ),
];
