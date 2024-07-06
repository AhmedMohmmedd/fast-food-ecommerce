
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';

class TotalPriceSection extends StatelessWidget {
  const TotalPriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomRowInfo(
              text: 'Tax Included',
              price: '250',
            ),
            CustomRowInfo(
              text: 'Delivery Charges',
              price: '200',
            ),
            CustomRowInfo(
              text: 'Sub Total',
              price: '2449',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRowInfo extends StatelessWidget {
  const CustomRowInfo({
    super.key,
    required this.text,
    required this.price,
  });
  final String text, price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyles.regular14,
        ),
        Text(
          '$price Rs',
          style: TextStyles.bold14,
        )
      ],
    );
  }
}
