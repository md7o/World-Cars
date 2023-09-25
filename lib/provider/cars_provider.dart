import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Car_Wave/data/details_data.dart';

final carsProvider = Provider((ref) {
  return detailsCar;
});
