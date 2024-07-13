import 'package:ecommerc/core/widgets/appbars/custom_normall_app_bar.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/core/widgets/text_fields/normal_text_field.dart';
import 'package:flutter/material.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomNormalAppBar(titel: 'My Address'),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 30,
            ),
            child: Column(
              children: [
                const CustomTextField(
                  hint: 'your address',
                  label: 'Address',
                  // controller: TextEditingController(text: 'A7MD M7HMD'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  hint: 'your city',
                  label: 'City',
                  // controller: TextEditingController(text: 'Cairo'),
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomTextField(
                  hint: 'your town',
                  label: 'Town',
                  // controller: TextEditingController(text: 'Cairo'),
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomTextField(
                  hint: 'your street',
                  label: 'Street',
                  // controller: TextEditingController(text: 'Cairo'),
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomTextField(
                  hint: '+20 01224097654t',
                  label: 'Phone Number',
                  // controller: TextEditingController(text: 'Cairo'),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomElevatedButton(
                  title: 'SAVE',
                  onTap: () {},
                  width: MediaQuery.sizeOf(context).width * .6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
