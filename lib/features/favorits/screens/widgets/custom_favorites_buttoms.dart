import 'package:ecommerc/features/favorits/screens/widgets/custom_favorite_button_item.dart';
import 'package:ecommerc/features/favorits/screens/widgets/favorite_foods_list.dart';
import 'package:ecommerc/features/favorits/screens/widgets/favorite_rasturans_list.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/categories_list_view_item.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/pizza_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomFavoriteBody extends StatefulWidget {
  const CustomFavoriteBody({
    super.key,
  });

  @override
  State<CustomFavoriteBody> createState() => _CustomFavoriteBodyState();
}

class _CustomFavoriteBodyState extends State<CustomFavoriteBody> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    FavoritsFoodsList(),
    FavoritesRestaurantsListView(),
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
             borderRadius: BorderRadius.circular(28),
             border: Border.all(
              color: Colors.grey,
              width: .5
             )
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
