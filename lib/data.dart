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
                'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_fq_oem_1_815.jpg',
            carName: 'Mercedes C-class',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_f_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_r_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_s_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/c-class/2023/oem/2023_mercedes-benz_c-class_sedan_c-300-4matic_d_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '187 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: 'June 1993',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '17.4 gal',
              ),
              Details(
                detailName: 'Cylinder',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '255 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$44,850',
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
                'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_fq_oem_3_815x543.jpg',
            carName: 'Mercedes G-class',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_f_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_r_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_s_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/g-class/2021/oem/2021_mercedes-benz_g-class_4dr-suv_amg-g-63_d_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '189.7 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1979',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '26.4 gal',
              ),
              Details(
                detailName: 'Cylinders',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V8',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '416 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$140,950',
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
            carImage:
                'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_fq_oem_1_815x543.jpg',
            carName: 'Mercedes CLA-class',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/cla-class/2020/oem/2020_mercedes-benz_cla-class_sedan_amg-cla-45_d_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '184.6 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2013',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '13.5 gal',
              ),
              Details(
                detailName: 'Cylinder',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '221 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$40,345',
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
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-500-4matic_fq_oem_3_1600x1067.jpg',
            carName: 'Mercedes S-Class',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-500-4matic_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-500-4matic_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-500-4matic_s_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-580-4matic_detail_oem_5_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mercedes-benz/s-class/2021/oem/2021_mercedes-benz_s-class_sedan_s-580-4matic_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '208.2 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1954',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '22.1 gal',
              ),
              Details(
                detailName: 'Cylinder',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V8',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '496 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$125,050',
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
        ],
      ),
      WorldCar(
        imageUrl: "images/volks.png",
        name: "Volkswagen ",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_fq_oem_2_815x543.jpg',
            carName: 'Passat',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/volkswagen/passat/2022/oem/2022_volkswagen_passat_sedan_limited-edition_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$28,570',
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
            carImage:
                'https://hogstavaxeln.se/wp-content/uploads/2021/06/Volkswagen-Touareg-R-black-04.jpg',
            carName: 'Touareg',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://cdn.motor1.com/images/mgl/NGGwXl/s1/2023-vw-touareg-facelift-rendering.jpg',
              ),
              Slidering(
                dimensions:
                    'https://cdn.motor1.com/images/mgl/qkkONJ/s3/2023-vw-touareg-facelift-rendering.jpg',
              ),
              Slidering(
                dimensions:
                    'https://www.topgear.com/sites/default/files/2022/10/15-Volkswagen-Touareg.jpg',
              ),
              Slidering(
                dimensions:
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$71,450 - \$128,400',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_fq_oem_2_815x543.jpg',
            carName: 'Arteon',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/volkswagen/arteon/2021/oem/2021_volkswagen_arteon_4dr-hatchback_sel-premium-r-line_fq_oem_4_815x543.jpg',
              ),
              Slidering(
                dimensions:
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$42,045',
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
            carImage:
                'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_fq_oem_3_815x543.jpg',
            carName: 'Jetta',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_rq_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/volkswagen/jetta/2022/oem/2022_volkswagen_jetta_sedan_se_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$21,510',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: '6-speed manual',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/bmw.png",
        name: "BMW",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_fq_oem_8_1600x1067.jpg',
            carName: 'M5',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_f_oem_1_500.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_r_oem_1_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/m5/2021/oem/2021_bmw_m5_sedan_base_s_oem_3_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$109,900',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'Sport Automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/bmw/x4/2022/oem/2022_bmw_x4_4dr-suv_m40i_fq_oem_2_1600x1067.jpg',
            carName: 'X4',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/x4/2022/oem/2022_bmw_x4_4dr-suv_m40i_fq_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/x4/2022/oem/2022_bmw_x4_4dr-suv_m40i_rq_oem_3_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/x4/2022/oem/2022_bmw_x4_4dr-suv_m40i_ri_oem_1_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/x4/2022/oem/2022_bmw_x4_4dr-suv_m40i_d_oem_1_1600x1067.jpg',
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$53,400',
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
            carImage:
                'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_fq_oem_1_815.jpg',
            carName: 'X7 M60i',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_f_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_r_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/bmw/x7/2023/oem/2023_bmw_x7_4dr-suv_m60i_s_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$62,200',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '4 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: '6-speed manual',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/audi.png",
        name: "Audi",
        carItems: [
          Cars(
            carImage:
                'https://www.topgear.com/sites/default/files/2022/02/1-Audi-Q3-review.jpg',
            carName: 'Q3',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://www.topgear.com/sites/default/files/2022/02/1-Audi-Q3-review.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/q3/2023/oem/2023_audi_q3_4dr-suv_premium-plus-s-line_rq_oem_6_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/q3/2023/oem/2023_audi_q3_4dr-suv_premium-plus-s-line_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$37,595',
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
            carImage:
                'https://media.ed.edmunds-media.com/audi/s5/2022/oem/2022_audi_s5_4dr-hatchback_prestige_fq_oem_3_815x543.jpg',
            carName: 'RS5',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/s5/2022/oem/2022_audi_s5_4dr-hatchback_prestige_fq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/s5/2022/oem/2022_audi_s5_4dr-hatchback_prestige_rq_oem_4_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/s5/2022/oem/2022_audi_s5_4dr-hatchback_prestige_rq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$77,295',
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
            carImage:
                'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_fq_oem_1_815.jpg',
            carName: 'TTRS',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$75,000',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '4 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: '6-speed manual',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "",
        name: "The most popular car in Germany in 2021-2022 is Volkswagen",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_f_oem_1_815x543.jpg',
              )
            ],
            details: [],
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
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_f_oem_1_815x543.jpg',
              )
            ],
            details: [],
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
        imageUrl: "images/Toyota.png",
        name: "Toyota",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_fq_oem_1_815x543.jpg',
            carName: 'Corolla',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_d_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '182.5 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: 'November 1966',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
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
                detailInfo: '169 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$22,645',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'Variable-speed automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/toyota/camry/2021/oem/2021_toyota_camry_sedan_xse_fq_oem_1_815x543.jpg',
            carName: 'Camry',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/camry-hybrid/2023/oem/2023_toyota_camry-hybrid_sedan_se-nightshade_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/camry-hybrid/2023/oem/2023_toyota_camry-hybrid_sedan_se-nightshade_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/camry-hybrid/2023/oem/2023_toyota_camry-hybrid_sedan_se-nightshade_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://i.ytimg.com/vi/LdV8zXL2Q7c/maxresdefault.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '192.1 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1982',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '15.8 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '203 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$27,040',
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
            carImage:
                'https://media.ed.edmunds-media.com/toyota/avalon/2021/oem/2021_toyota_avalon_sedan_touring_fq_oem_1_815x543.jpg',
            carName: 'Avalon',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/avalon/2021/oem/2021_toyota_avalon_sedan_touring_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/avalon/2021/oem/2021_toyota_avalon_sedan_touring_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/avalon/2021/oem/2021_toyota_avalon_sedan_touring_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/avalon/2021/oem/2021_toyota_avalon_sedan_touring_d_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '195.9 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1994',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '14.5 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V6',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '301 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$37,850',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'Shiftable automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/toyota/gr-supra/2022/oem/2022_toyota_gr-supra_coupe_30-premium_fq_oem_1_815x543.jpg',
            carName: 'GR Supra',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/gr-supra/2022/oem/2022_toyota_gr-supra_coupe_30-premium_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/gr-supra/2022/oem/2022_toyota_gr-supra_coupe_30-premium_rq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/gr-supra/2022/oem/2022_toyota_gr-supra_coupe_30-premium_s_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/gr-supra/2022/oem/2022_toyota_gr-supra_coupe_20_d_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '172.5 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1978',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '13.7 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '255 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$44,565',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '2 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'Shiftable automatic',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/Honda.png",
        name: "Honda",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/honda/accord/2021/oem/2021_honda_accord_sedan_touring_fq_oem_1_815x543.jpg',
            carName: 'Accord',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/accord/2021/oem/2021_honda_accord_sedan_touring_fq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/accord/2021/oem/2021_honda_accord_sedan_touring_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/accord/2021/oem/2021_honda_accord_sedan_touring_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/accord/2021/oem/2021_honda_accord_sedan_touring_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/accord/2021/oem/2021_honda_accord_sedan_touring_i_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/accord/2021/oem/2021_honda_accord_sedan_sport_i_oem_2_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '196.1 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1976',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '14.8 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '192 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$27,615',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'variable-speed automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/honda/civic/2023/oem/2023_honda_civic_sedan_si_fq_oem_1_815x543.jpg',
            carName: 'Civic',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/civic/2023/oem/2023_honda_civic_sedan_si_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/civic/2023/oem/2023_honda_civic_sedan_si_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/civic/2023/oem/2023_honda_civic_sedan_si_rq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/civic/2023/oem/2023_honda_civic_sedan_sport_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '184 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1972',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '12.4 gal',
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$25,745',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'variable-speed automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/honda/hr-v/2023/oem/2023_honda_hr-v_4dr-suv_ex-l_fq_oem_3_815x543.jpg',
            carName: 'HR-V',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/hr-v/2023/oem/2023_honda_hr-v_4dr-suv_sport_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/hr-v/2023/oem/2023_honda_hr-v_4dr-suv_sport_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/hr-v/2023/oem/2023_honda_hr-v_4dr-suv_ex-l_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/hr-v/2023/oem/2023_honda_hr-v_4dr-suv_ex-l_i_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/honda/hr-v/2023/oem/2023_honda_hr-v_4dr-suv_sport_detail_oem_3_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '179.8  Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1998',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '14.0  gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '158  hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$23,650',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'variable-speed automatic',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/Mazda.png",
        name: "Mazda",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/mazda/3/2023/oem/2023_mazda_3_4dr-hatchback_25-turbo-premium-plus_fq_oem_1_815x543.jpg',
            carName: 'Mazda 3 Hatchback',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/3/2023/oem/2023_mazda_3_4dr-hatchback_25-turbo-premium-plus_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/3/2023/oem/2023_mazda_3_4dr-hatchback_25-turbo-premium-plus_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/3/2023/oem/2023_mazda_3_4dr-hatchback_25-turbo-premium-plus_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/3/2023/oem/2023_mazda_3_sedan_premium_d_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '175.6 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2003',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
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
                detailInfo: '191 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$24,615',
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
            carImage:
                'https://media.ed.edmunds-media.com/mazda/6/2021/oem/2021_mazda_6_sedan_grand-touring-reserve_fq_oem_4_815x543.jpg',
            carName: 'Mazda 6',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/6/2021/oem/2021_mazda_6_sedan_grand-touring-reserve_fq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/6/2021/oem/2021_mazda_6_sedan_grand-touring-reserve_rq_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/6/2021/oem/2021_mazda_6_sedan_grand-touring-reserve_rq_oem_5_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/6/2021/oem/2021_mazda_6_sedan_carbon-edition_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '192.7 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2002',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '16.4 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '187 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$25,470',
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
            carImage:
                'https://media.ed.edmunds-media.com/mazda/cx-9/2021/oem/2021_mazda_cx-9_4dr-suv_grand-touring_fq_oem_5_815x543.jpg',
            carName: 'Mazda CX-9',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/cx-9/2021/oem/2021_mazda_cx-9_4dr-suv_grand-touring_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/cx-9/2021/oem/2021_mazda_cx-9_4dr-suv_grand-touring_rq_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/cx-9/2021/oem/2021_mazda_cx-9_4dr-suv_grand-touring_s_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/cx-9/2021/oem/2021_mazda_cx-9_4dr-suv_signature_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/mazda/cx-9/2021/oem/2021_mazda_cx-9_4dr-suv_signature_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199.4  Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2006',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '19.5 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '227  hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$40,025',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '6 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'shiftable automatic',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/Nissan.png",
        name: "Nissan",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/nissan/maxima/2022/oem/2022_nissan_maxima_sedan_35-sr_fq_oem_1_815x543.jpg',
            carName: 'Maxima',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/maxima/2022/oem/2022_nissan_maxima_sedan_35-sr_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/maxima/2022/oem/2022_nissan_maxima_sedan_35-sr_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/maxima/2022/oem/2022_nissan_maxima_sedan_35-sr_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/maxima/2022/oem/2022_nissan_maxima_sedan_35-sr_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/maxima/2022/oem/2022_nissan_maxima_sedan_35-sr_detail_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '192.8 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1980',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '18.0 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V6',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '300 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$39,235',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'variable-speed automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/nissan/altima/2023/oem/2023_nissan_altima_sedan_vc-t-sr_fq_oem_1_815x543.jpg',
            carName: 'Altima',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/altima/2023/oem/2023_nissan_altima_sedan_vc-t-sr_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/altima/2023/oem/2023_nissan_altima_sedan_vc-t-sr_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/altima/2023/oem/2023_nissan_altima_sedan_vc-t-sr_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/altima/2023/oem/2023_nissan_altima_sedan_vc-t-sr_i_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/altima/2023/oem/2023_nissan_altima_sedan_vc-t-sr_d_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '192.9  Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1992',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '16.2 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '188 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$26,385',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: ' variable-speed automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/nissan/rogue/2023/oem/2023_nissan_rogue_4dr-suv_platinum_fq_oem_10_815x543.jpg',
            carName: 'Rogue S',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/rogue/2023/oem/2023_nissan_rogue_4dr-suv_platinum_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/rogue/2023/oem/2023_nissan_rogue_4dr-suv_platinum_r_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/rogue/2023/oem/2023_nissan_rogue_4dr-suv_platinum_fq_oem_11_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/rogue/2023/oem/2023_nissan_rogue_4dr-suv_platinum_d_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/nissan/rogue/2023/oem/2023_nissan_rogue_4dr-suv_platinum_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '183 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2007',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '14.5  gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V3',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '201  hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$28,655',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'variable-speed automatic',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/KIA.png",
        name: "The world's best selling car is the Toyota Corolla.",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            imageSlide: [
              Slidering(
                dimensions: '',
              ),
            ],
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
            imageSlide: [
              Slidering(
                dimensions: '',
              ),
            ],
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
            carImage:
                'https://media.ed.edmunds-media.com/gmc/yukon/2023/oem/2023_gmc_yukon_4dr-suv_at4_fq_oem_1_1600x1067.jpg',
            carName: 'Yukon',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/yukon/2023/oem/2023_gmc_yukon_4dr-suv_at4_fq_oem_6_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/yukon/2023/oem/2023_gmc_yukon_4dr-suv_at4_rq_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/yukon/2023/oem/2023_gmc_yukon_4dr-suv_at4_s_oem_1_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/yukon/2023/oem/2023_gmc_yukon_4dr-suv_at4_i_oem_1_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/yukon/2023/oem/2023_gmc_yukon_4dr-suv_at4_d_oem_1_1600x1067.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '210.0  Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1991',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '24.0 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V8',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '355  hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$59,295',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '8 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'shiftable automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/gmc/sierra-1500/2022/oem/2022_gmc_sierra-1500_crew-cab-pickup_at4x_fq_oem_1_1600x1067.jpg',
            carName: 'Sierra 1500 Crew',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/sierra-1500/2022/oem/2022_gmc_sierra-1500_crew-cab-pickup_at4x_fq_oem_3_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/sierra-1500/2022/oem/2022_gmc_sierra-1500_crew-cab-pickup_at4x_rq_oem_1_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/sierra-1500/2022/oem/2022_gmc_sierra-1500_crew-cab-pickup_at4x_fq_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/sierra-1500/2022/oem/2022_gmc_sierra-1500_crew-cab-pickup_at4x_d_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/sierra-1500/2022/oem/2022_gmc_sierra-1500_crew-cab-pickup_at4x_i_oem_1_1600x1067.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '231.9 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2007',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '24.0 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '310 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$43,895',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '6 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'shiftable automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://www.gmc.com/content/dam/gmc/na/us/english/index/vehicles/2023/suvs/terrain-mov/01-images/2023-terrain-denali-s-23PGTN00058.jpg?imwidth=960',
            carName: 'Terrain',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://www.gmc.com/content/dam/gmc/na/us/english/index/vehicles/2023/suvs/terrain-mov/terrain-denali/01-images/2023-terrain-denali-s-23PGTN00058.jpg?imwidth=960',
              ),
              Slidering(
                dimensions:
                    'https://www.gmc.com/content/dam/gmc/na/us/english/index/vehicles/2023/suvs/terrain-mov/01-images/2023-terrain-slt-s-23PGTN00074.jpg?imwidth=960',
              ),
              Slidering(
                dimensions:
                    'https://thenewswheel.com/wp-content/uploads/2020/09/2020-gmc-terrain-1200x674.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/terrain/2022/oem/2022_gmc_terrain_4dr-suv_at4_d_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '182.3 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: 'August 2009',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '14.9 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '175 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$29,795',
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
            carImage:
                'https://media.ed.edmunds-media.com/gmc/hummer-ev/2022/oem/2022_gmc_hummer-ev_crew-cab-pickup_edition-1_fq_oem_8_815x543.jpg',
            carName: 'HUMMER EV',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/hummer-ev/2022/oem/2022_gmc_hummer-ev_crew-cab-pickup_edition-1_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/hummer-ev/2022/oem/2022_gmc_hummer-ev_crew-cab-pickup_edition-1_rq_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/hummer-ev/2022/oem/2022_gmc_hummer-ev_crew-cab-pickup_edition-1_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/hummer-ev/2022/oem/2022_gmc_hummer-ev_crew-cab-pickup_edition-1_i_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/gmc/hummer-ev/2022/oem/2022_gmc_hummer-ev_crew-cab-pickup_edition-1_ri_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '216.8 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: 'November 1966',
              ),
              Details(
                detailName: 'Battery capacity:',
                detailPhoto: 'images/car-battery.png',
                detailInfo: '200 kWh',
              ),
              Details(
                detailName: 'Engine Type:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'Electric',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '169 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$110,295',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: '1-speed direct drive',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/Ford.png",
        name: "Ford",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_mach-1_fq_oem_2_815x543.jpg',
            carName: 'Mustang',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_mach-1_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_gt-premium_rq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_mach-1_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_gt-premium_i_oem_2_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '188.9  Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: 'March 1964',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '15.5 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '310 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$29,165',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '4 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: '6-speed manual',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_king-ranch_fq_oem_2_815x543.jpg',
            carName: 'Explorer',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_king-ranch_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_king-ranch_s_oem_1_1280x855.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_king-ranch_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_king-ranch_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_king-ranch_detail_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '198.8 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1991',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '17.9 gal',
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$38,255',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '7 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: '10-speed automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/ford/expedition/2022/oem/2022_ford_expedition_4dr-suv_limited_fq_oem_1_815x543.jpg',
            carName: 'Expedition',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/expedition/2022/oem/2022_ford_expedition_4dr-suv_limited_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/expedition/2022/oem/2022_ford_expedition_4dr-suv_limited_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/expedition/2022/oem/2022_ford_expedition_4dr-suv_limited_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/expedition/2022/oem/2022_ford_expedition_4dr-suv_limited_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/expedition/2022/oem/2022_ford_expedition_4dr-suv_limited_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '210 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1996',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '23.2 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V6',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '380 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$54,700',
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
        ],
      ),
      WorldCar(
        imageUrl: "images/Sheforleh.png",
        name: "Chevrolet",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/chevrolet/corvette/2020/oem/2020_chevrolet_corvette_coupe_stingray_fq_oem_6_815x543.jpg',
            carName: 'Corvette',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/corvette/2020/oem/2020_chevrolet_corvette_coupe_stingray_fq_oem_6_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/corvette/2020/oem/2020_chevrolet_corvette_coupe_stingray_rq_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/corvette/2020/oem/2020_chevrolet_corvette_coupe_stingray_s_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/corvette/2020/oem/2020_chevrolet_corvette_coupe_stingray_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/corvette/2020/oem/2020_chevrolet_corvette_coupe_stingray_detail_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '182.3 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1953',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '18.5 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V8',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '490 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$65,595',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '2 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'automated manual',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/chevrolet/tahoe/2022/oem/2022_chevrolet_tahoe_4dr-suv_high-country_fq_oem_2_1600x1067.jpg',
            carName: 'Tahoe',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/tahoe/2022/oem/2022_chevrolet_tahoe_4dr-suv_high-country_f_oem_1_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/tahoe/2022/oem/2022_chevrolet_tahoe_4dr-suv_high-country_rq_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/tahoe/2022/oem/2022_chevrolet_tahoe_4dr-suv_high-country_fq_oem_3_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/tahoe/2022/oem/2022_chevrolet_tahoe_4dr-suv_premier_d_oem_1_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/tahoe/2022/oem/2022_chevrolet_tahoe_4dr-suv_rst_d_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/tahoe/2022/oem/2022_chevrolet_tahoe_4dr-suv_rst_rsd_oem_2_1600x1067.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '210.7 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1994',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '24.0 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V8',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '355 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$52,695',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '9 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'shiftable automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/chevrolet/silverado-1500-limited/2022/oem/2022_chevrolet_silverado-1500-limited_crew-cab-pickup_lt_fq_oem_1_1600x1067.jpg',
            carName: 'Silverado 1500 Limited Double Cab',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/silverado-1500-limited/2022/oem/2022_chevrolet_silverado-1500-limited_crew-cab-pickup_ltz_f_oem_1_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/chevrolet/silverado-1500-limited/2022/oem/2022_chevrolet_silverado-1500-limited_crew-cab-pickup_lt_rq_oem_3_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://o.aolcdn.com/images/dims3/GLOB/legacy_thumbnail/1600x900/format/jpg/quality/85/https://s.aolcdn.com/os/ab/_cms/2021/09/08155403/2022-Chevrolet-Silverado-HighCountry-015.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '231.7 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1953',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '24.0  gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '310 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$35,995',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '6 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'shiftable automatic',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/Lincoln.png",
        name: "Lincoln ",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/lincoln/corsair/2021/oem/2021_lincoln_corsair_4dr-suv_grand-touring_fq_oem_4_500.jpg',
            carName: ' Corsair',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/corsair/2021/oem/2021_lincoln_corsair_4dr-suv_reserve_fq_oem_4_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/corsair/2021/oem/2021_lincoln_corsair_4dr-suv_grand-touring_rq_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/corsair/2021/oem/2021_lincoln_corsair_4dr-suv_reserve_fq_oem_2_1600x1067.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/corsair/2021/oem/2021_lincoln_corsair_4dr-suv_reserve_d_oem_1_1600x1067.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '181.4 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: 'August 2019',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '16.2 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '250 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$39,885',
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
            carImage:
                'https://media.ed.edmunds-media.com/lincoln/navigator/2022/oem/2022_lincoln_navigator_4dr-suv_black-label_fq_oem_2_815x543.jpg',
            carName: 'Navigator',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/navigator/2022/oem/2022_lincoln_navigator_4dr-suv_black-label_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/navigator/2022/oem/2022_lincoln_navigator_4dr-suv_reserve_rbdg_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/navigator/2022/oem/2022_lincoln_navigator_4dr-suv_black-label_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/navigator/2022/oem/2022_lincoln_navigator_4dr-suv_black-label_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/navigator/2022/oem/2022_lincoln_navigator_4dr-suv_black-label_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '210 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1997',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '23.6 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V6',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '440 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$79,330',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '7 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'shiftable automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/lincoln/aviator/2020/oem/2020_lincoln_aviator_4dr-suv_black-label_fq_oem_3_815x543.jpg',
            carName: ' Aviator ',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/aviator/2020/oem/2020_lincoln_aviator_4dr-suv_grand-touring_fq_oem_7_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/aviator/2020/oem/2020_lincoln_aviator_4dr-suv_black-label_rq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/aviator/2020/oem/2020_lincoln_aviator_4dr-suv_grand-touring_fq_oem_4_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://hips.hearstapps.com/autoweek/assets/s3fs-public/2019-10/a-29.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/lincoln/aviator/2020/oem/2020_lincoln_aviator_4dr-suv_black-label_detail_oem_2_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '199.3 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2002',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '20.2 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V6',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '400 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$56,535',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '8 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'shiftable automatic',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/KIA.png",
        name: "The second best selling car in the world Ford F-series.",
        carItems: [
          Cars(
            carImage: '',
            carName: '',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_d_oem_1_815x543.jpg',
              ),
            ],
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
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_d_oem_1_815x543.jpg',
              ),
            ],
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
        name: "Kia",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/kia/sportage/2023/oem/2023_kia_sportage_4dr-suv_x-pro_fq_oem_2_815x543.jpg',
            carName: 'Sportage',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/sportage/2023/oem/2023_kia_sportage_4dr-suv_x-pro_fq_oem_4_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/sportage/2023/oem/2023_kia_sportage_4dr-suv_x-pro_rq_oem_4_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/sportage/2023/oem/2023_kia_sportage_4dr-suv_x-pro_fq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/sportage/2023/oem/2023_kia_sportage_4dr-suv_x-pro_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/sportage/2023/oem/2023_kia_sportage_4dr-suv_x-pro_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '183.5  Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1993',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '14.3 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '187 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$27,615',
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
            carImage:
                'https://media.ed.edmunds-media.com/kia/stinger/2022/oem/2022_kia_stinger_sedan_gt-line_fq_oem_8_815x543.jpg',
            carName: 'Stinger',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/stinger/2022/oem/2022_kia_stinger_sedan_gt-line_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/stinger/2022/oem/2022_kia_stinger_sedan_gt-line_rq_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/stinger/2022/oem/2022_kia_stinger_sedan_gt-line_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/stinger/2022/oem/2022_kia_stinger_sedan_gt-line_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/stinger/2022/oem/2022_kia_stinger_sedan_gt-line_ri_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '183.5  Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2017',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '190.2 gal',
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$37,865',
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
            carImage:
                'https://media.ed.edmunds-media.com/kia/ev6/2023/oem/2023_kia_ev6_4dr-suv_gt-line_fq_oem_1_815x543.jpg',
            carName: 'EV6',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/ev6/2023/oem/2023_kia_ev6_4dr-suv_gt-line_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/ev6/2023/oem/2023_kia_ev6_4dr-suv_gt-line_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/ev6/2023/oem/2023_kia_ev6_4dr-suv_gt-line_s_oem_4_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/ev6/2023/oem/2023_kia_ev6_4dr-suv_gt-line_d_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/kia/ev6/2023/oem/2023_kia_ev6_4dr-suv_gt-line_ri_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '184.3 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2021',
              ),
              Details(
                detailName: 'Battery capacity:',
                detailPhoto: 'images/car-battery.png',
                detailInfo: '	77.4 kWh',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$50,025',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: '1-speed direct drive',
              ),
            ],
          ),
          // Cars(
          //   carImage:
          //       'https://media.ed.edmunds-media.com/kia/sorento/2022/oem/2022_kia_sorento_4dr-suv_sx_fq_oem_1_815x543.jpg',
          //   carName: 'Sorento',
          //   imageSlide: [
          //     Slidering(
          //       dimensions:
          //           'https://media.ed.edmunds-media.com/kia/sorento/2022/oem/2022_kia_sorento_4dr-suv_sx_fq_oem_2_815x543.jpg',
          //     ),
          //     Slidering(
          //       dimensions:
          //           'https://media.ed.edmunds-media.com/kia/sorento/2022/oem/2022_kia_sorento_4dr-suv_sx_s_oem_1_815x543.jpg',
          //     ),
          //     Slidering(
          //       dimensions:
          //           'https://media.ed.edmunds-media.com/kia/sorento/2022/oem/2022_kia_sorento_4dr-suv_sx_d_oem_1_815x543.jpg',
          //     ),
          //     Slidering(
          //       dimensions:
          //           'https://media.ed.edmunds-media.com/kia/sorento/2022/oem/2022_kia_sorento_4dr-suv_sx_i_oem_1_815x543.jpg',
          //     ),
          //   ],
          //   details: [
          //     Details(
          //       detailName: 'Lenght:',
          //       detailPhoto: 'images/ruler.png',
          //       detailInfo: '189.0 Inch',
          //     ),
          //     Details(
          //       detailName: 'Production:',
          //       detailPhoto: 'images/backTime.png',
          //       detailInfo: '2002',
          //     ),
          //     Details(
          //       detailName: 'Fuel tank capacity:',
          //       detailPhoto: 'images/tank.png',
          //       detailInfo: '17.7 gal',
          //     ),
          //     Details(
          //       detailName: 'Cylinder:',
          //       detailPhoto: 'images/cylinder.png',
          //       detailInfo: 'V4',
          //     ),
          //     Details(
          //       detailName: 'Horsepower:',
          //       detailPhoto: 'images/engine.png',
          //       detailInfo: '191 hp',
          //     ),
          //     Details(
          //       detailName: 'Price:',
          //       detailPhoto: 'images/dollar.png',
          //       detailInfo: '\$31,415',
          //     ),
          //     Details(
          //       detailName: 'Seating:',
          //       detailPhoto: 'images/seat.png',
          //       detailInfo: '7 Seats',
          //     ),
          //     Details(
          //       detailName: 'Transmission:',
          //       detailPhoto: 'images/transmission.png',
          //       detailInfo: '8-speed automatic',
          //     ),
          //   ],
          // ),
        ],
      ),
      WorldCar(
        imageUrl: "images/Hyundai.png",
        name: "Hyundai",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/hyundai/elantra/2021/oem/2021_hyundai_elantra_sedan_limited_fq_oem_10_815x543.jpg',
            carName: 'Elantra',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/elantra/2021/oem/2021_hyundai_elantra_sedan_limited_f_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/elantra/2021/oem/2021_hyundai_elantra_sedan_limited_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/elantra/2021/oem/2021_hyundai_elantra_sedan_limited_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/elantra/2021/oem/2021_hyundai_elantra_sedan_limited_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '184.1 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1990',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '12.4 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '147 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$21,595',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'variable-speed automatic',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/hyundai/sonata/2021/oem/2021_hyundai_sonata_sedan_limited_fq_oem_6_815x543.jpg',
            carName: 'Sonata',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/sonata/2021/oem/2021_hyundai_sonata_sedan_limited_f_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/sonata/2021/oem/2021_hyundai_sonata_sedan_limited_r_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/sonata/2021/oem/2021_hyundai_sonata_sedan_limited_fq_oem_4_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/sonata/2021/oem/2021_hyundai_sonata_sedan_n-line_i_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '192.9 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '1985',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '14.8 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V4',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '191 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$26,045',
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
            carImage:
                'https://media.ed.edmunds-media.com/hyundai/kona/2022/oem/2022_hyundai_kona_4dr-suv_limited_fq_oem_1_815x543.jpg',
            carName: 'Kona ',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/kona/2022/oem/2022_hyundai_kona_4dr-suv_limited_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/kona/2022/oem/2022_hyundai_kona_4dr-suv_limited_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/kona/2022/oem/2022_hyundai_kona_4dr-suv_limited_rq_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/kona/2022/oem/2022_hyundai_kona_4dr-suv_limited_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/hyundai/kona/2022/oem/2022_hyundai_kona_4dr-suv_n-line_rsd_oem_2_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '165.6 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2017',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
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
                detailInfo: '147 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$23,285',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: 'variable-speed automatic',
              ),
            ],
          ),
        ],
      ),
      WorldCar(
        imageUrl: "images/Genesis.png",
        name: "Genesis",
        carItems: [
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/genesis/gv60/2023/oem/2023_genesis_gv60_4dr-suv_performance_fq_oem_1_815x543.jpg',
            carName: 'GV60',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv60/2023/oem/2023_genesis_gv60_4dr-suv_performance_fq_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv60/2023/oem/2023_genesis_gv60_4dr-suv_performance_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv60/2023/oem/2023_genesis_gv60_4dr-suv_performance_rq_oem_2_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv60/2023/oem/2023_genesis_gv60_4dr-suv_performance_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv60/2023/oem/2023_genesis_gv60_4dr-suv_performance_detail_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '177.8 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2021',
              ),
              Details(
                detailName: 'Battery capacity:',
                detailPhoto: 'images/car-battery.png',
                detailInfo: '	77.4 kWh',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$60,385',
              ),
              Details(
                detailName: 'Seating:',
                detailPhoto: 'images/seat.png',
                detailInfo: '5 Seats',
              ),
              Details(
                detailName: 'Transmission:',
                detailPhoto: 'images/transmission.png',
                detailInfo: '1-speed direct drive',
              ),
            ],
          ),
          Cars(
            carImage:
                'https://media.ed.edmunds-media.com/genesis/gv80/2021/oem/2021_genesis_gv80_4dr-suv_35t-advanced-plus_fq_oem_1_815.jpg',
            carName: 'GV80',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv80/2021/oem/2021_genesis_gv80_4dr-suv_35t-advanced-plus_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv80/2021/oem/2021_genesis_gv80_4dr-suv_35t-advanced-plus_rq_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv80/2021/oem/2021_genesis_gv80_4dr-suv_35t-advanced-plus_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv80/2021/oem/2021_genesis_gv80_4dr-suv_35t-advanced-plus_d_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/gv80/2021/oem/2021_genesis_gv80_4dr-suv_35t-advanced-plus_detail_oem_2_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '194.7 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2020',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '21.1 gal',
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
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$56,645',
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
            carImage:
                'https://media.ed.edmunds-media.com/genesis/g90/2020/oem/2020_genesis_g90_sedan_50-ultimate_fq_oem_3_815x543.jpg',
            carName: 'G90',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/g90/2020/oem/2020_genesis_g90_sedan_50-ultimate_fq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/g90/2020/oem/2020_genesis_g90_sedan_50-ultimate_rbdg_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/g90/2020/oem/2020_genesis_g90_sedan_50-ultimate_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/g90/2020/oem/2020_genesis_g90_sedan_50-ultimate_detail_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/genesis/g90/2020/oem/2020_genesis_g90_sedan_50-ultimate_ri_oem_1_815x543.jpg',
              ),
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '204.9 Inch',
              ),
              Details(
                detailName: 'Production:',
                detailPhoto: 'images/backTime.png',
                detailInfo: '2015',
              ),
              Details(
                detailName: 'Fuel tank capacity:',
                detailPhoto: 'images/tank.png',
                detailInfo: '21.9 gal',
              ),
              Details(
                detailName: 'Cylinder:',
                detailPhoto: 'images/cylinder.png',
                detailInfo: 'V6',
              ),
              Details(
                detailName: 'Horsepower:',
                detailPhoto: 'images/engine.png',
                detailInfo: '365 hp',
              ),
              Details(
                detailName: 'Price:',
                detailPhoto: 'images/dollar.png',
                detailInfo: '\$76,045',
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
        ],
      ),
      WorldCar(
        imageUrl: "images/ssang.png",
        name: "SsangYong ",
        carItems: [
          Cars(
            carImage: 'images/mercedes.png',
            carName: 'Mercedes',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_mach-1_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_gt-premium_rq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_mach-1_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_gt-premium_i_oem_2_815x543.jpg',
              ),
            ],
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
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_mach-1_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_gt-premium_rq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_mach-1_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_gt-premium_i_oem_2_815x543.jpg',
              ),
            ],
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
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_mach-1_f_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_gt-premium_rq_oem_3_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_mach-1_s_oem_1_815x543.jpg',
              ),
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/ford/mustang/2022/oem/2022_ford_mustang_coupe_gt-premium_i_oem_2_815x543.jpg',
              ),
            ],
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
