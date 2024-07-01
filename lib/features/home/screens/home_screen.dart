import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/features/home/screens/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  bool isSlected = false;
  final pages = const [
    HomeScreenBody(),
    Center(child: Text('shop cart')),
    Center(child: Text('location')),
    Center(child: Text('favorits')),
    Center(child: Text('profile')),
  ];
   void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.only(left: 20 , right: 20, top: 20),
        child: pages[currentIndex],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false, 
        showUnselectedLabels: false,  
       selectedItemColor: AppColors.primaryColor,
       unselectedItemColor: AppColors.dark,
       elevation: 0,
       backgroundColor: Colors.green[100],
       

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',  
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'shop cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'profiel',
          ),
        ],
      ),

    );
  }
}
