import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qwiz_app/core/router/app_router.dart';

@RoutePage()
class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [HomeRoute(), HistoryRoute(), SettingsRoute()],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'History',
              icon: Icon(Icons.history_outlined),
              activeIcon: Icon(Icons.history),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
            ),
          ],
        );
      },
    );
  }
}
