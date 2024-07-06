
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/number_off_section.dart';
import 'package:ecommerc/features/my_cart/screens/widgets/circuler_checbox.dart';
import 'package:flutter/material.dart';

class CustomCartItem extends StatefulWidget {
   CustomCartItem({
    super.key,
    required this.isSlected,
  });

   bool isSlected;

  @override
  State<CustomCartItem> createState() => _CustomCartItemState();
}

class _CustomCartItemState extends State<CustomCartItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSlected = !widget.isSlected ;
        });
      },
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: widget.isSlected ? AppColors.primaryColor: Colors.grey[200],
          // color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircularCheckbox(
                    value: widget.isSlected,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/food/image2.jfif'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: 75,
                    width: 75,
                  ),
                ],
              ),
               NumberOfSection(
                numberColor: widget.isSlected ? Colors.white: Colors.black,
                text: 'Chezz Pizza',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1999 Ks',
                    style: TextStyles.styleBold20(context).copyWith(
                      color:widget.isSlected ? Colors.white: AppColors.primaryColor,
                    ),
                  ),
                  
                  Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.delete_outline,
                          color: AppColors.primaryColor,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
