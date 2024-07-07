import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/appbars/custom_normall_app_bar.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/features/my_cart/screens/payment/payment_detalis.dart';
import 'package:ecommerc/features/my_cart/screens/payment/widgets/payment_method_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomNormalAppBar(
        titel: 'Payment Method',
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 14,
          right: 14,
          bottom: 45,
          top: 60,
        ),
        child: Column(
          children: [
            const Expanded(child: PaymentMethodListView()),
            CustomElevatedButton(
              width: MediaQuery.sizeOf(context).width * .7,
              title: 'PROCEED TO PAYMENT',
              onTap: () {
                 Navigator.push(context,
            MaterialPageRoute(builder: (context) {
          return const PaymentDetailsScreen();
        },),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
