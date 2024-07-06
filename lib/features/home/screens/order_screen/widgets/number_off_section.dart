
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_arrow_back_item.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_arrow_forward_item.dart';
import 'package:flutter/material.dart';

class NumberOfSection extends StatefulWidget {
 const NumberOfSection({
    super.key,
  });

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
          'Number Of Pizza',
          style: TextStyles.stylesimibols18(context),
        ),
        const SizedBox(
              height: 10,
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CustomArrowBackIcon(
              size: 18,
              onTap: () {
                setState(() {
                  if(num > 1){
                    num--;
                  }
                  else{}
                  
                });
              },
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              '$num',
              style: TextStyles.styleBold18(context),
            ),
            const SizedBox(
              width: 24,
            ),
             CustomArrowForwardIcon(
              onTap: () {
                num++ ;
                setState(() {
                  
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
