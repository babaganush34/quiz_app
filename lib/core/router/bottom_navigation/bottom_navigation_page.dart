import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qwiz_app/core/router/app_router.dart';

@RoutePage()
class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [HomeRoute(), MapRoute(), ProfileRoute()],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.explore_outlined),
              activeIcon: Icon(Icons.explore),
            ),
            BottomNavigationBarItem(
              label: 'Map',
              icon: Icon(Icons.map_outlined),
              activeIcon: Icon(Icons.map),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_2_outlined),
              activeIcon: Icon(Icons.person_2),
            ),
          ],
        );
      },
    );
  }
}
