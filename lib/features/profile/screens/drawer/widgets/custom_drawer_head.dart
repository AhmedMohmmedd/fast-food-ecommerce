
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';

class CustomDrawerHead extends StatelessWidget {
  const CustomDrawerHead({
    super.key, this.textColor,
  });
final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageContiner(),
        const SizedBox(height: 5,),
        Text(
          'Ahmed M7MD',
          style: TextStyles.styleBold18(context).copyWith(
            color:textColor ?? Colors.white,
          ),
        ),
        const SizedBox(height: 3,),
         Text(
          'xyz',
          style: TextStyle(
            color:textColor ?? Colors.white,
          ),
        ),
      ],
    );
  }
}

class CustomImageContiner extends StatelessWidget {
  const CustomImageContiner({
    super.key, this.child,
  });
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(
            'assets/images/IMG_20230811_161505_259.jpg',
          ),
          fit: BoxFit.contain,
        ),
      ),
      child: child,
    );
  }
}
