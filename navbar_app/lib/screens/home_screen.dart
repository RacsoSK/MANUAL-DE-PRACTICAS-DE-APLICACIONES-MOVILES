import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;

  final screens = [
    const Center(child: Text('HomeScreen', style: TextStyle(fontSize: 45))),
    const Center(child: Text('PerfilScreen', style: TextStyle(fontSize: 45))),
    const Center(child: Text('InfoScreen', style: TextStyle(fontSize: 45))),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie View', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      backgroundColor: Colors.pink.shade900,
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
          color: Colors.pink.shade900,
          tabBackgroundColor: Colors.pink.shade900,
          selectedIndex: _currentIndex,
          tabBorderRadius: 30,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          onTabChange:((index) => setState((() => _currentIndex = index))),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),

            GButton(
              icon: Icons.person,
              text: 'Perfil',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
      
            GButton(
              icon: Icons.info,
              text: 'Información',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
          ]
        ),
      )
    );
  }
}