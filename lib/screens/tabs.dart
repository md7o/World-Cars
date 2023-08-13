import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_car/provider/favorites_provider.dart';
import 'package:world_car/screens/favorate.dart';
import 'package:world_car/screens/setting.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'home_categories.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;

  // final List<Car> _favoriteCars = [];

  // void _toggleCarFavoriteStatus(Car car) {
  //   final isExisting = _favoriteCars.contains(car);

  //   if (isExisting) {
  //     _favoriteCars.remove(car);
  //   } else {
  //     _favoriteCars.add(car);
  //   }
  // }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  // final List<Widget> activePage = [
  //   const HomeCategories(),
  //   const Favorite(
  //     cars: [],
  //   ),
  //   const Setting(),
  // ];

  @override
  Widget build(BuildContext context) {
    Widget activePage = HomeCategories();

    if (_selectedPageIndex == 1) {
      final favoriteCars = ref.watch(favoriteAssortmentProvider);
      activePage = Favorite(
        assortment: favoriteCars,
      );
    } else if (_selectedPageIndex == 2) activePage = Setting();

    return Scaffold(
      body: activePage,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Theme.of(context).primaryColor,
        height: 60,
        animationDuration: const Duration(milliseconds: 600),
        onTap: _selectPage,
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.favorite_rounded,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
