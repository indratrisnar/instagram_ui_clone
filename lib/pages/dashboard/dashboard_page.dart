import 'package:flutter/material.dart';

import '../../config/app_asset.dart';
import 'home_view.dart';
import 'search_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  List dashboardMenu = [
    {
      'icon_active': AppAsset.navIconHomeActive,
      'icon_inactive': AppAsset.navIconHomeInactive,
      'label': 'Home',
      'view': Homeview(),
    },
    {
      'icon_active': AppAsset.navIconSearchActive,
      'icon_inactive': AppAsset.navIconSearchInactive,
      'label': 'Search',
      'view': SearchView(),
    },
    {
      'icon_active': AppAsset.navIconPlusInactive,
      'icon_inactive': AppAsset.navIconPlusInactive,
      'label': 'Add',
      'view': const Text('Add'),
    },
    {
      'icon_active': AppAsset.navIconFavoriteActive,
      'icon_inactive': AppAsset.navIconFavoriteInactive,
      'label': 'Favorite',
      'view': const Text('Favorite'),
    },
    {
      'icon_active': '',
      'icon_inactive': '',
      'label': 'Account',
      'view': const Text('Account'),
    },
  ];
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: dashboardMenu[currentIndex]['view'] as Widget,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isDark ? const Color(0xff121212) : Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: isDark ? const Color(0xff121212) : Colors.white70,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: isDark ? Colors.white : Colors.black,
          unselectedItemColor: isDark ? Colors.white : Colors.black,
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          items: List.generate(
            dashboardMenu.length,
            (index) {
              Map item = dashboardMenu[index];
              if (index == dashboardMenu.length - 1) {
                return BottomNavigationBarItem(
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.network(
                      AppAsset.authImage,
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                    ),
                  ),
                  label: item['label'],
                );
              }
              return BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(item['icon_inactive']),
                ),
                activeIcon: ImageIcon(
                  AssetImage(item['icon_active']),
                ),
                label: item['label'],
              );
            },
          ),
        ),
      ),
    );
  }
}
