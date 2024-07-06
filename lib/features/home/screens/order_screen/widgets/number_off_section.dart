import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_arrow_back_item.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_arrow_forward_item.dart';
import 'package:flutter/material.dart';

class NumberOfSection extends StatefulWidget {
  const NumberOfSection({
    super.key,
    required this.text,
    this.numberColor, this.textColor,
  });
  final String text;
  final Color? numberColor;
  final Color? textColor;
  @override
  State<NumberOfSection> createState() => _NumberOfSectionState();
}

class _NumberOfSectionState extends State<NumberOfSection> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.text,
          style: TextStyles.stylesimibols18(context).copyWith(
                color: widget.numberColor ?? Colors.black,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomArrowBackIcon(
              borderColor: AppColors.primaryColor,
              size: 16,
              onTap: () {
                setState(() {
                  if (num > 1) {
                    num--;
                  } else {}
                });
              },
            ),
            const SizedBox(
              width: 14,
            ),
            Text(
              '$num',
              style: TextStyles.styleBold18(context).copyWith(
                color: widget.numberColor ?? Colors.black,
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            CustomArrowForwardIcon(
              onTap: () {
                num++;
                setState(() {});
              },
            ),
          ],
        )
      ],
    );
  }
}
