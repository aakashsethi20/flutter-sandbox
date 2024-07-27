import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FitnessAppBar extends CupertinoTabBar {
  
  // static List<BottomNavigationBarItem> items;
  static List<BottomNavigationBarItem> tabItems = [
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: 'Home',
      // activeIcon: Icon(CupertinoIcons.home, color: Colors.red,)
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.news),
      label: 'Feed',
      // activeIcon: Icon(CupertinoIcons.news, color: Colors.black,)
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search_circle),
      label: 'Discover',
      // activeIcon: Icon(CupertinoIcons.search_circle, color: Colors.black,)
    )
  ];

  FitnessAppBar({super.key}) : super(items: tabItems, activeColor: Colors.red);

  // @override
  // Widget build(BuildContext context) {
  //   return CupertinoTabBar(
  //     items: super.items
  //   );
  // }
}
