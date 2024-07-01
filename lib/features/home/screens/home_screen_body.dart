import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/widgets/categories_list_view.dart';
import 'package:ecommerc/features/home/screens/widgets/categories_list_view_item.dart';
import 'package:ecommerc/features/home/screens/widgets/custom_home_appbar.dart';
import 'package:ecommerc/features/home/screens/widgets/custom_sherch_row.dart';
import 'package:ecommerc/features/home/screens/widgets/custom_text_field_wuth_bacground_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        children: [
           CustomHomeAppBar(),
          SizedBox(
            height: 20,
          ),
          CustomSherchRow(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: CategorisListView())
        ],
      ),
    );
  }
}
