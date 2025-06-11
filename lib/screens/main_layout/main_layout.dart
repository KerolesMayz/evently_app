import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/routes_manager/routes_manager.dart';
import 'package:evently/screens/main_layout/tabs/home_tab/home_tab.dart';
import 'package:evently/screens/main_layout/tabs/love_tab/love_tab.dart';
import 'package:evently/screens/main_layout/tabs/map_tab/map_tab.dart';
import 'package:evently/screens/main_layout/tabs/profile_tab/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedTab = 0;
  List<Widget> tabs = const [HomeTab(), MapTab(), LoveTab(), ProfileTab()];

  void _onTabClick(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesManager.createEvent);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: SizedBox(
        height: 60.h,
        child: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: _onTabClick,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsManager.homeOutlined,
                    width: 17, height: 17),
                activeIcon: SvgPicture.asset(
                  AssetsManager.home,
                  width: 20,
                  height: 20,
                ),
                label: AppLocalizations.of(context)!.home),
            BottomNavigationBarItem(
                icon: const Icon(Icons.location_on_outlined),
                activeIcon: const Icon(Icons.location_on),
                label: AppLocalizations.of(context)!.map),
            BottomNavigationBarItem(
                icon: const Icon(EvaIcons.heart_outline),
                activeIcon: const Icon(EvaIcons.heart),
                label: AppLocalizations.of(context)!.love),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsManager.personOutlined,
                    width: 17, height: 17),
                activeIcon: SvgPicture.asset(
                  AssetsManager.person,
                  width: 20,
                  height: 20,
                ),
                label: AppLocalizations.of(context)!.profile),
          ],
        ),
      ),
      body: tabs[_selectedTab],
    );
  }
}
