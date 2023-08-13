import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_car/models/car.dart';

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

// =====================================================================

class FavortieCarsNotifier extends StateNotifier<List<Car>> {
  FavortieCarsNotifier() : super([]);
}

final favoriteCarsProvider =
    StateNotifierProvider<FavortieCarsNotifier, List<Car>>(
  (ref) {
    return FavortieCarsNotifier();
  },
);
