import 'package:Car_Wave/screens/favorite.dart';
import 'package:Car_Wave/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../provider/favorites_provider.dart';
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

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeCategories();

    if (_selectedPageIndex == 1) {
      final favoriteCars = ref.watch(favoriteAssortmentProvider);
      activePage = Favorite(
        assortment: favoriteCars,
      );
    } else if (_selectedPageIndex == 2) {
      activePage = Setting();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          width: double.infinity,
          color: Theme.of(context).colorScheme.onBackground,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _selectPage,
            iconSize: 28,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedLabelStyle: GoogleFonts.cairo(),
            selectedLabelStyle: GoogleFonts.cairo(),
            backgroundColor: Theme.of(context).colorScheme.onBackground,
            unselectedItemColor: Colors.white60,
            selectedItemColor: const Color.fromARGB(218, 0, 255, 255),
            currentIndex: _selectedPageIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Setting',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
