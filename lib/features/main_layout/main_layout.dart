import 'package:evently_app/core/routes_manager/app_routes.dart';
import 'package:evently_app/features/main_layout/favourite/favourite_tab.dart';
import 'package:evently_app/features/main_layout/home/home_tab.dart';
import 'package:evently_app/features/main_layout/map/map_tab.dart';
import 'package:evently_app/features/main_layout/profile/profile_tab.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  List<Widget> tabs = [
    HomeTab(),
    MapTab(),
    FavouriteTab(),
    ProfileTab()
  ];
  int selectedIndex = 0;
  late AppLocalizations appLocalizations;

  @override
  Widget build(BuildContext context) {
    appLocalizations = AppLocalizations.of(context)!;
    return Scaffold(
      extendBody: true,
      body: tabs[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFloatingActionButton(),
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  FloatingActionButton _buildFloatingActionButton(){
    return FloatingActionButton(
      onPressed: (){
        Navigator.pushNamed(context, AppRoutes.createEvent);
      },
      child: Icon(Icons.add),
    );
  }

  BottomAppBar _buildBottomAppBar(){
    return BottomAppBar(
      notchMargin: 4,
      child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: _onTab,
          items: [
            BottomNavigationBarItem(icon: Icon(selectedIndex == 0 ? Icons.home : Icons.home_outlined),label: appLocalizations.home),
            BottomNavigationBarItem(icon: Icon(selectedIndex == 1 ? Icons.location_on : Icons.location_on_outlined),label: appLocalizations.map),
            BottomNavigationBarItem(icon: Icon(selectedIndex == 2 ? Icons.favorite : Icons.favorite_border_outlined),label: appLocalizations.favourite),
            BottomNavigationBarItem(icon: Icon(selectedIndex == 3 ? Icons.person : Icons.person_outline),label: appLocalizations.profile),
          ]
      ),
    );
  }

  void _onTab(int newIndex){
    setState(() {
      selectedIndex = newIndex;
    });
  }
}
