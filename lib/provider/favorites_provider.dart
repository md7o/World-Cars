import 'package:flutter/animation.dart';
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

// final animationProvider = Provider<Animation<double>>((ref) {
//   final controller = AnimationController(
//     vsync: ref.read(vsyncProvider), // You need to provide a TickerProvider
//     duration: Duration(seconds: 1), // Set the animation duration
//   )..forward(); // Start the animation immediately

//   return Tween<double>(begin: 0, end: 1).animate(controller);
// });
