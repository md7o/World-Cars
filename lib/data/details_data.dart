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
        id: 'a1',
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
            detailName: 'Cylinder :',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V4',
          ),
          Details(
            detailName: 'Horsepower :',
            detailPhoto: 'images/engine.png',
            detailInfo: '255 hp',
          ),
          Details(
            detailName: 'Seating :',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
      Assortment(
        id: 'a2',
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
            detailName: 'Lenght :',
            detailPhoto: 'images/ruler.png',
            detailInfo: '189.7 Inch',
          ),
          Details(
            detailName: 'Production :',
            detailPhoto: 'images/backTime.png',
            detailInfo: '1979',
          ),
          Details(
            detailName: 'Fuel tank :',
            detailPhoto: 'images/tank.png',
            detailInfo: '26.4 gal',
          ),
          Details(
            detailName: 'Cylinders :',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V8',
          ),
          Details(
            detailName: 'Horsepower :',
            detailPhoto: 'images/engine.png',
            detailInfo: '416 hp',
          ),
          Details(
            detailName: 'Seating :',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
      Assortment(
        id: 'a3',
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
        id: 'a4',
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
  Car(
    id: 'd2',
    categories: [
      'c1',
    ],
    title: 'Volkswagen',
    imgAssets: 'images/volks.png',
    assortment: [
      Assortment(
        id: 'a1',
        carName: 'Passat',
        carImage:
            'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_fq_oem_2_815x543.jpg',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_f_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_r_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_rq_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_r-line_d_oem_1_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '193.6 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: 'january 1973',
          ),
          Details(
            detailName: 'Fuel tank capacity	:',
            detailPhoto: 'images/tank.png',
            detailInfo: '18.5 gal',
          ),
          Details(
            detailName: 'Cylinder',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V4',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '174 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
      Assortment(
        id: 'a2',
        carName: 'Touareg',
        carImage:
            'https://hogstavaxeln.se/wp-content/uploads/2021/06/Volkswagen-Touareg-R-black-04.jpg',
        slideAblum: [
          Sliding(
            sliding:
                'https://cdn.motor1.com/images/mgl/NGGwXl/s1/2023-vw-touareg-facelift-rendering.jpg',
          ),
          Sliding(
            sliding:
                'https://cdn.motor1.com/images/mgl/qkkONJ/s3/2023-vw-touareg-facelift-rendering.jpg',
          ),
          Sliding(
            sliding:
                'https://www.topgear.com/sites/default/files/2022/10/15-Volkswagen-Touareg.jpg',
          ),
          Sliding(
            sliding:
                'https://imgcdn.zigwheels.ae/large/gallery/interior/41/1115/volkswagen-touareg-2018-dashboard-view-246473.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '192 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: 'August 2002',
          ),
          Details(
            detailName: 'Fule tank capacity:',
            detailPhoto: 'images/tank.png',
            detailInfo: '23.7 gal',
          ),
          Details(
            detailName: 'Cylinder',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V6',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '340 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
      Assortment(
        id: 'a3',
        carName: 'Arteon',
        carImage:
            'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_fq_oem_2_815x543.jpg',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_f_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_r_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_fq_oem_4_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_d_oem_2_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '191.5 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: '2017',
          ),
          Details(
            detailName: 'Fuel tank capacity	:',
            detailPhoto: 'images/tank.png',
            detailInfo: '17.4 gal',
          ),
          Details(
            detailName: 'Cylinder:',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V4',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '300 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
      Assortment(
        id: 'a4',
        carName: 'Jetta',
        carImage:
            'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_fq_oem_3_815x543.jpg',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_f_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_rq_oem_2_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_s_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_d_oem_1_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '186.5 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: 'August 1979',
          ),
          Details(
            detailName: 'Fuel tank capacity	:',
            detailPhoto: 'images/tank.png',
            detailInfo: '13.2 gal',
          ),
          Details(
            detailName: 'Cylinder:',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V4',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '158 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
    ],
  ),
// Volkswagen ===================
  // ---------------------------------------------------------
// BMW ===================
  Car(
    id: 'd3',
    categories: [
      'c1',
    ],
    title: 'BMW',
    imgAssets: 'images/bmw.png',
    assortment: [
      Assortment(
        id: 'a1',
        carName: 'M5',
        carImage:
            'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_fq_oem_8_1600x1067.jpg',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_f_oem_1_500.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_r_oem_1_1600x1067.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_s_oem_3_1600x1067.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_d_oem_1_1600x1067.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '196.4 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: '1985',
          ),
          Details(
            detailName: 'Fuel tank capacity:',
            detailPhoto: 'images/tank.png',
            detailInfo: '20.1 gal',
          ),
          Details(
            detailName: 'Cylinder:',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V8',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '600 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
      Assortment(
        id: 'a2',
        carImage:
            'https://media.ed.edmunds-media.com/bmw/x4/2022/oem/2022_bmw_x4_4dr-suv_m40i_fq_oem_2_1600x1067.jpg',
        carName: 'X4',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/x4/2022/oem/2022_bmw_x4_4dr-suv_m40i_fq_oem_2_1600x1067.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/x4/2022/oem/2022_bmw_x4_4dr-suv_m40i_rq_oem_3_1600x1067.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/x4/2022/oem/2022_bmw_x4_4dr-suv_m40i_ri_oem_1_1600x1067.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_d_oem_3_1600x1067.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '187.6 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: 'July 2014',
          ),
          Details(
            detailName: 'Fuel tank capacity:',
            detailPhoto: 'images/tank.png',
            detailInfo: '17.2 gal',
          ),
          Details(
            detailName: 'Cylinder:',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V4',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '248 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
      Assortment(
        id: 'a3',
        carImage:
            'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_fq_oem_1_815.jpg',
        carName: 'X7 M60i',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_f_oem_2_1600x1067.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_r_oem_2_1600x1067.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_s_oem_2_1600x1067.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_d_oem_3_1600x1067.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '180 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: '2015',
          ),
          Details(
            detailName: 'Fuel tank capacity:',
            detailPhoto: 'images/tank.png',
            detailInfo: '13.7 gal',
          ),
          Details(
            detailName: 'Cylinder:',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V6',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '453 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '4 Seats',
          ),
        ],
      ),
    ],
  ),
// BMW ===================
  // ---------------------------------------------------------
// Audi ==================
  Car(
    id: 'd4',
    categories: [
      'c1',
    ],
    title: 'Audi',
    imgAssets: 'images/audi.png',
    assortment: [
      Assortment(
        id: 'a1',
        carImage:
            'https://www.topgear.com/sites/default/files/2022/02/1-Audi-Q3-review.jpg',
        carName: 'Q3',
        slideAblum: [
          Sliding(
            sliding:
                'https://www.topgear.com/sites/default/files/2022/02/1-Audi-Q3-review.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/q3/2023/oem/2023_audi_q3_4dr-suv_premium-plus-s-line_rq_oem_6_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/q3/2023/oem/2023_audi_q3_4dr-suv_premium-plus-s-line_s_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/q3/2023/oem/2023_audi_q3_4dr-suv_premium-plus-s-line_d_oem_1_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '176.6 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: '2011',
          ),
          Details(
            detailName: 'Fuel tank capacity:',
            detailPhoto: 'images/tank.png',
            detailInfo: '15.9 gal',
          ),
          Details(
            detailName: 'Cylinder:',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V4',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '184 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
      Assortment(
        id: 'a2',
        carImage:
            'https://media.ed.edmunds-media.com/audi/s5/2022/oem/2022_audi_s5_4dr-hatchback_prestige_fq_oem_3_815x543.jpg',
        carName: 'RS5',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/s5/2022/oem/2022_audi_s5_4dr-hatchback_prestige_fq_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/s5/2022/oem/2022_audi_s5_4dr-hatchback_prestige_rq_oem_4_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/s5/2022/oem/2022_audi_s5_4dr-hatchback_prestige_rq_oem_3_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/s5/2022/oem/2022_audi_s5_4dr-hatchback_prestige_d_oem_2_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '188.3 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: '2010',
          ),
          Details(
            detailName: 'Fuel tank capacity:',
            detailPhoto: 'images/tank.png',
            detailInfo: '15.3 gal',
          ),
          Details(
            detailName: 'Cylinder:',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V6',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '444 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '5 Seats',
          ),
        ],
      ),
      Assortment(
        id: 'a3',
        carImage:
            'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_fq_oem_1_815.jpg',
        carName: 'TTRS',
        slideAblum: [
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_f_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_r_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_s_oem_1_815x543.jpg',
          ),
          Sliding(
            sliding:
                'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_d_oem_1_815x543.jpg',
          ),
        ],
        details: [
          Details(
            detailName: 'Lenght:',
            detailPhoto: 'images/ruler.png',
            detailInfo: '165 Inch',
          ),
          Details(
            detailName: 'Production:',
            detailPhoto: 'images/backTime.png',
            detailInfo: '1985',
          ),
          Details(
            detailName: 'Fuel tank capacity:',
            detailPhoto: 'images/tank.png',
            detailInfo: '14.5 gal',
          ),
          Details(
            detailName: 'Cylinder:',
            detailPhoto: 'images/cylinder.png',
            detailInfo: 'V5',
          ),
          Details(
            detailName: 'Horsepower:',
            detailPhoto: 'images/engine.png',
            detailInfo: '394 hp',
          ),
          Details(
            detailName: 'Seating:',
            detailPhoto: 'images/seat.png',
            detailInfo: '4 Seats',
          ),
        ],
      ),
    ],
  ),
// Audi ===================
  // ---------------------------------------------------------
];
