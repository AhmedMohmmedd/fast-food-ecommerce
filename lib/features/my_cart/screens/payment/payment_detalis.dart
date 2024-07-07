import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/appbars/custom_normall_app_bar.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/features/my_cart/screens/payment/widgets/custom_text_feild.dart';
import 'package:ecommerc/features/my_cart/screens/payment/widgets/custom_text_feild_with_drop_down.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomNormalAppBar(
        titel: 'Payment Details',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 60,
        ),
        child: Column(
          children: [
            const CustomTextFormField(
              hint: 'Card Holder Name',
            ),
            const SizedBox(
              height: 30,
            ),
          const  CustomTextFiledWithDropdownButton(),
            
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .4,
                  child: const CustomTextFormField(
                    hint: 'Expiry Date',
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .4,
                  child: const CustomTextFormField(
                    hint: 'CVV Code',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'By Clicking "Confirm Payment" I agree to company terms of services',
              style: TextStyles.stylesreguler16(context),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    width: MediaQuery.sizeOf(context).width * .43,
                    color: Colors.grey[200],
                    textColor: Colors.black,
                    title: 'BACK',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  CustomElevatedButton(
                    width: MediaQuery.sizeOf(context).width * .43,
                    title: 'Confirm Payment',
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
