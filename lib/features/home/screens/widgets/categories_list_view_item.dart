
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategorisListViewItem extends StatelessWidget {
  const CategorisListViewItem({
    super.key, required this.isSelected,
  });
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : Colors.grey[300],
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/categoris/fast-food-burger-svgrepo-com.svg',
              height: 38,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Sandwich',
              style: TextStyles.semibold14,
            )
          ],
        ),
      ),
    );
  }
}
