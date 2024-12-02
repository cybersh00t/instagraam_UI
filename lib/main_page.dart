import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    const Center(
        child: Text(
      'Search',
      style: TextStyle(fontSize: 40),
    )),
    const Center(
        child: Text(
      'Video',
      style: TextStyle(fontSize: 40),
    )),
    const Center(
        child: Text(
      'Shop',
      style: TextStyle(fontSize: 40),
    )),
    const Center(
        child: Text(
      'Account',
      style: TextStyle(fontSize: 40),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          selectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 0
                    ? Icons.home_outlined
                    : Icons.home_outlined),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 1
                    ? Icons.search_outlined
                    : Icons.search_outlined),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 2
                    ? Icons.video_call_outlined
                    : Icons.video_call_outlined),
                label: 'Video'),
            BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 3
                    ? Icons.shop_outlined
                    : Icons.shop_outlined),
                label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 4
                    ? Icons.person_outline
                    : Icons.person_outline),
                label: 'Account'),
          ]),
    );
  }
}
