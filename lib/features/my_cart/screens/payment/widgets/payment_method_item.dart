
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatefulWidget {
   PaymentMethodItem({
    super.key,
    required this.icActive,
  });
   bool icActive;

  @override
  State<PaymentMethodItem> createState() => _PaymentMethodItemState();
}

class _PaymentMethodItemState extends State<PaymentMethodItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.icActive = !widget.icActive;
        });
      },
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.icActive ? AppColors.primaryColor : Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: SizedBox(
                width: 45,
                child: SvgPicture.asset(
                  'assets/payment/visa.svg',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            Center(
              child: Text(
                'Master card',
                style: TextStyles.stylesimibols18(context).copyWith(
                  color: widget.icActive ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
