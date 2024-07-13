import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/profile/screens/drawer/widgets/custom_drawer_head.dart';
import 'package:ecommerc/features/profile/screens/drawer/widgets/drawer_item.dart';
import 'package:ecommerc/features/profile/screens/drawer/widgets/drawer_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .85,
      height: MediaQuery.sizeOf(context).height * .85,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 34,
            horizontal: 14,
          ),
          child: Column(
            children: [
              CustomDrawerHead(),
              SizedBox(
                height: 20,
              ),
              DrawerLIstView(),
            ],
          ),
        ),
      ),
    );
  }
}
