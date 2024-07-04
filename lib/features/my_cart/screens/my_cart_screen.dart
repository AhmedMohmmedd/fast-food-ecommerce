import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/appbars/custom_app_bar.dart';
import 'package:ecommerc/features/my_cart/screens/widgets/circuler_checbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  bool isChecked = false;

  void toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        CustomAppBar(
          titel: 'Cart',
        ),
        SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () {
            toggleCheckbox();
          },
          child: Container(
            height: 90,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              // color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                CircularCheckbox(
                  value: isChecked,
                ),
                // SizedBox(
                //   height: 60,
                //   child: SvgPicture.asset('assets/food/image3.jfif' , height: 60,))
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
