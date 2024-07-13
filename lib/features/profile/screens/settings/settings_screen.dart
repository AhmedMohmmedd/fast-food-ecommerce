import 'package:ecommerc/core/widgets/appbars/custom_app_bar.dart';
import 'package:ecommerc/features/profile/screens/settings/widgets/custom_settings_hader.dart';
import 'package:ecommerc/features/profile/screens/settings/widgets/custom_settings_screen_body.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
        children: [
          CustomAppBar(titel: 'Settings'),
          SizedBox(
            height: 40,
          ),
          CustomSettingsScreenBody(),
        ],
      ),
    );
  }
}
