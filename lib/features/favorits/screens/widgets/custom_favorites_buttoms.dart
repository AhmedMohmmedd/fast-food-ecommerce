import 'package:ecommerc/features/favorits/screens/widgets/custom_favorite_button_item.dart';
import 'package:ecommerc/features/favorits/screens/widgets/favorite_foods_list.dart';
import 'package:ecommerc/features/favorits/screens/widgets/favorite_rasturans_list.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/categories_list_view_item.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/pizza_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomFavoriteButtoms extends StatefulWidget {
  const CustomFavoriteButtoms({
    super.key,
  });

  @override
  State<CustomFavoriteButtoms> createState() => _CustomFavoriteButtomsState();
}

class _CustomFavoriteButtomsState extends State<CustomFavoriteButtoms> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    FavoritsFoodsList(),
    FavoritesRestaurantsListView(),
    // Center(child: Text('Page 2 Content')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
             color:   Colors.grey[300],
             borderRadius: BorderRadius.circular(28)
            ),
            height: 56,
            width: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              
            children: [
              GestureDetector(
                 onTap: () => _onItemTapped(0),
                child:  CustomFavoritBottnItem(
                  titel: 'Food Items',
                  isSelected: _selectedIndex == 0,
                ),
              ),
              GestureDetector(
                 onTap: () => _onItemTapped(1),
                child:  CustomFavoritBottnItem(
                  titel: 'Rasturants',
                  isSelected: _selectedIndex == 1,
                ),
              ),
            ],
          ),),
          
          const SizedBox(
            height: 30,
          ),
          _pages[_selectedIndex],
        ],
      ),
    );
  }
}
