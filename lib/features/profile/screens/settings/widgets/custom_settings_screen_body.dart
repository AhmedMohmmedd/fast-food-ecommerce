import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/profile/screens/settings/widgets/custom_settings_hader.dart';
import 'package:flutter/material.dart';

class CustomSettingsScreenBody extends StatelessWidget {
  const CustomSettingsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomSettingsHeader(
            icon: Icons.person_3_outlined,
            titel: 'Account',
          ),
          CustomSettingsItem(titel: 'Edit Profile',),
          CustomSettingsItem(titel: 'Change Password',),
          CustomSettingsItem(titel: 'Manage Orders',),
          CustomSettingsItem(titel: 'Rate App',),
           CustomSettingsHeader(
            icon: Icons.notifications_outlined,
            titel: 'Notifivations',
          ),
          CustomSettingsItem(titel: 'App Notifivations',),
          CustomSettingsItem(titel: 'Recommendation',),
           CustomSettingsHeader(
            icon: Icons.more_time_rounded,
            titel: 'More',
          ),
          CustomSettingsItem(titel: 'Language',),
          CustomSettingsItem(titel: 'Country',),
        ],
      ),
    );
  }
}

class CustomSettingsItem extends StatelessWidget {
  const CustomSettingsItem({
    super.key, required this.titel,
  });
final String titel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
     
      leading: Text(
        titel,
        style: TextStyles.stylesreguler18(context).copyWith(
          color: Colors.grey,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        size: 20,
        color: Colors.grey,
      ),
    );
  }
}
