import 'package:asiste/pages/asistencia.page.dart';
import 'package:asiste/pages/home.page.dart';
import 'package:asiste/pages/profile.page.dart';
import 'package:asiste/styles/color.style.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AsistenciaPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle, size: 28),
            label: 'Asistencia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 28),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary,
        onTap: _onItemTapped,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
      ),
    );
  }
}
