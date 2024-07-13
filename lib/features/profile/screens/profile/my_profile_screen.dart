import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/appbars/custom_normall_app_bar.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/core/widgets/text_fields/normal_text_field.dart';
import 'package:ecommerc/features/my_cart/screens/my_card/widgets/circuler_checbox.dart';
import 'package:ecommerc/features/profile/screens/drawer/widgets/custom_drawer_head.dart';
import 'package:ecommerc/features/profile/screens/profile/widgets/custom_profile_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomNormalAppBar(titel: 'My Profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const   CustomProfilePhoto(),
                const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'full name',
                label: 'Full Name',
                controller: TextEditingController(text: 'A7MD M7HMD'),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: '+ 20 125087487',
                label: 'Phone Number',
                controller: TextEditingController(text: '01225087487'),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'ahmed@email.com',
                label: 'Email',
                controller: TextEditingController(text: 'ahmed@email.com'),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'your city',
                label: 'City',
                controller: TextEditingController(text: 'Cairo'),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: '28|11|2001',
                label: 'Date of Birth',
                controller: TextEditingController(text: '28-11-2001'),
                suffix: const Icon(Icons.calendar_month_outlined),
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
    );
  }
}
