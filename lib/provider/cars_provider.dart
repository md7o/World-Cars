import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_car/data/details_data.dart';

final carsProvider = Provider((ref) {
  return detailsCar;
});
