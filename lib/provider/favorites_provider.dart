import 'package:flutter/animation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Car_Wave/models/car.dart';

class FavortieAssortmentNotifier extends StateNotifier<List<Assortment>> {
  FavortieAssortmentNotifier() : super([]);

  bool toggleAssortmentFavoriteStatus(Assortment assortment) {
    final carIsFavorite = state.contains(assortment);

    if (carIsFavorite) {
      state = state.where((a) => a.id != assortment.id).toList();
      return false;
    } else {
      state = [...state, assortment];
      return true;
    }
  }
}

final favoriteAssortmentProvider =
    StateNotifierProvider<FavortieAssortmentNotifier, List<Assortment>>(
  (ref) {
    return FavortieAssortmentNotifier();
  },
);
