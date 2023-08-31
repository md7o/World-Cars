import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_car/data/details_data.dart';
import 'package:world_car/provider/favorites_provider.dart';
import 'package:world_car/screens/compared.dart';
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
    } else if (_selectedPageIndex == 2) {
      activePage = Setting();
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.onBackground,
            // Theme.of(context).colorScheme.tertiary,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: activePage,
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(double.infinity),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: _selectPage,
                elevation: 0,
                backgroundColor: Color(0xFF081B29),
                unselectedItemColor: Color(0xCF009CA7),
                selectedItemColor: Colors.teal[200],
                currentIndex: _selectedPageIndex,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      size: 30,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite_rounded,
                      size: 30,
                    ),
                    label: 'item 2',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    label: 'item 2',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// CurvedNavigationBar(
//               backgroundColor: Colors.transparent,
//               height: 60,
//               animationDuration: const Duration(milliseconds: 600),
//               onTap: _selectPage,
//               items: const [
//                 Icon(
//                   Icons.home,
//                   color: Colors.white,
//                   size: 35,
//                 ),
//                 Icon(
//                   Icons.favorite_rounded,
//                   color: Colors.white,
//                   size: 35,
//                 ),
//                 Icon(
//                   Icons.compare_arrows,
//                   color: Colors.white,
//                   size: 35,
//                 ),
//                 Icon(
//                   Icons.settings,
//                   color: Colors.white,
//                   size: 35,
//                 ),
//               ],
//             ),