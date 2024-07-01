
import 'package:ecommerc/features/home/screens/widgets/custom_text_field_wuth_bacground_color.dart';
import 'package:flutter/material.dart';

class CustomSherchRow extends StatelessWidget {
  const CustomSherchRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(child: CustomTextFieldWithBacgroundColor()),
       const SizedBox(width: 20,),
        Container(
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.list_rounded,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }
}
