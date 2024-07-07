
import 'package:ecommerc/features/my_cart/screens/payment/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodListView extends StatelessWidget {
  const PaymentMethodListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int slectedItem = 0;
    return ListView.builder(
        itemCount: 3,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 14,
            ),
            child: PaymentMethodItem(
              icActive: slectedItem == index,
            ),
          );
        });
  }
}
