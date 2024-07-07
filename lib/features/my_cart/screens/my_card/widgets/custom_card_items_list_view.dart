import 'package:ecommerc/features/my_cart/screens/my_card/widgets/custom_card_item.dart';
import 'package:flutter/cupertino.dart';

class CustomCardItemsListView extends StatelessWidget {
  const CustomCardItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int activeIndex = 0;
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomCartItem(isSlected: activeIndex == index),
          );
        });
  }
}
