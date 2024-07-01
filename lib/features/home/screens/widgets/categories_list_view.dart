
import 'package:ecommerc/features/home/screens/widgets/categories_list_view_item.dart';
import 'package:flutter/material.dart';

class CategorisListView extends StatefulWidget {
  const CategorisListView({
    super.key,
  });

  @override
  State<CategorisListView> createState() => _CategorisListViewState();
}

class _CategorisListViewState extends State<CategorisListView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text('Page 1 Content')),
    Center(child: Text('Page 2 Content')),
    Center(child: Text('Page 3 Content')),
    Center(child: Text('Page 4 Content')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context , index){
            return GestureDetector(
               onTap: () => _onItemTapped(index),
              child:  Padding(
                padding: const EdgeInsets.only(right: 14),
                child: CategorisListViewItem(
                  isSelected: _selectedIndex == index,
                ),
              ),
            );
          }),
        ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
      ],
    );
  }
}
