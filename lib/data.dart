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
                detailName: 'Made in:',
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
                detailName: 'Made in:',
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
                detailName: 'Made in:',
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
                detailName: 'Made in:',
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
                detailName: 'Made in:',
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
                detailName: 'Made in:',
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
                detailName: 'Made in:',
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
                detailName: 'Made in:',
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
                detailInfo: '196.4 Inch',
              ),
              Details(
                detailName: 'Made in:',
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
                'https://www.topgear.com/sites/default/files/2021/11/BMW%20X4M%20Sao%20Paulo%20Yellow%20013.jpg',
            carName: 'X4',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_f_oem_1_815x543.jpg',
              )
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '187.6 Inch',
              ),
              Details(
                detailName: 'Made in:',
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
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/p90481921-1665421743.jpeg?crop=0.813xw:0.610xh;0.187xw,0.316xh&resize=1200:*',
            carName: 'M2',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_f_oem_1_815x543.jpg',
              )
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '180 Inch',
              ),
              Details(
                detailName: 'Made in:',
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
                    'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_f_oem_1_815x543.jpg',
              )
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '176.6 Inch',
              ),
              Details(
                detailName: 'Made in:',
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
                'https://media.ed.edmunds-media.com/audi/rs-5/2023/oem/2023_audi_rs-5_4dr-hatchback_base_fq_oem_1_815.jpg',
            carName: 'RS5',
            imageSlide: [
              Slidering(
                dimensions:
                    'https://media.ed.edmunds-media.com/audi/tt-rs/2021/oem/2021_audi_tt-rs_coupe_base_f_oem_1_815x543.jpg',
              )
            ],
            details: [
              Details(
                detailName: 'Lenght:',
                detailPhoto: 'images/ruler.png',
                detailInfo: '188.3 Inch',
              ),
              Details(
                detailName: 'Made in:',
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
                detailName: 'Made in:',
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
  // Category(
  //   img: "images/JapanC.png",
  //   CountryId: "images/japan.png",
  //   label: "Japan",
  //   items: const [
  //     WorldCar(
  //       imageUrl: "images/Honda.png",
  //       name: "Honda",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/Toyota.png",
  //       name: "Toyota",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/Mazda.png",
  //       name: "Mazda",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/Nissan.png",
  //       name: "Nissan",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/KIA.png",
  //       name: "The world's best selling car is the Toyota Corolla.",
  //       carItems: [
  //         Cars(
  //           carImage: '',
  //           carName: '',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/toyota_founder.png",
  //       name:
  //           "It was founded by Kiichiro Toyoda and incorporated on August 28, 1937 (1937-08-28).",
  //       carItems: [
  //         Cars(
  //           carImage: '',
  //           carName: '',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   ],
  // ),
  // Category(
  //   img: "images/AmericaC.png",
  //   CountryId: "images/usa.png",
  //   label: "America",
  //   items: const [
  //     WorldCar(
  //       imageUrl: "images/GMC.png",
  //       name: "GMC",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/Ford.png",
  //       name: "Ford",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/Sheforleh.png",
  //       name: "Sheforleh",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/Lincoln.png",
  //       name: "Lincoln ",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/KIA.png",
  //       name: "The second best selling car in the world Ford F-series.",
  //       carItems: [
  //         Cars(
  //           carImage: '',
  //           carName: '',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/lincon_founder.png",
  //       name:
  //           "Henry Leland, a founder of the Cadillac auto brand, established the Lincoln Motor Company in 1917.",
  //       carItems: [
  //         Cars(
  //           carImage: '',
  //           carName: '',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   ],
  // ),
  // Category(
  //   img: "images/KoreaC.png",
  //   CountryId: "images/korea.png",
  //   label: "Korea",
  //   items: const [
  //     WorldCar(
  //       imageUrl: "images/KIA.png",
  //       name: "KIA",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/Hyundai.png",
  //       name: "Hyundai",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/ssang.png",
  //       name: "SsangYong ",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/Genesis.png",
  //       name: "Genesis",
  //       carItems: [
  //         Cars(
  //           carImage: 'images/mercedes.png',
  //           carName: 'Mercedes',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/KIA.png",
  //       name: "The most popular car in South Korea in 2021-2022 is Hyundai.",
  //       carItems: [
  //         Cars(
  //           carImage: '',
  //           carName: '',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //     WorldCar(
  //       imageUrl: "images/kia_founder.png",
  //       name:
  //           "Kia's humble history dates back to 1944. Founder Kim Chul Ho was born in Korea in 1905.",
  //       carItems: [
  //         Cars(
  //           carImage: '',
  //           carName: '',
  //           details: [
  //             Details(
  //               detailName: '199',
  //               detailPhoto: 'images/ruler.png',
  //               detailInfo: '199',
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   ],
  // ),
};
