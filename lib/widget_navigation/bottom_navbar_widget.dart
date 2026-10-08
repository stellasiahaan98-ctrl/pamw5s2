import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    Center(child: Text('Beranda', style: TextStyle(fontSize: 24))),
    Center(child: Text('Pencarian', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profil', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Navigation Bar')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pencarian',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}