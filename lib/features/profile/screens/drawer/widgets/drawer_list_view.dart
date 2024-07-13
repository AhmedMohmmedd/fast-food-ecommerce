import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/profile/screens/address/my_assress_screen.dart';
import 'package:ecommerc/features/profile/screens/drawer/widgets/drawer_item.dart';
import 'package:ecommerc/features/profile/screens/profile/my_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerLIstView extends StatelessWidget {
  const DrawerLIstView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         DrawerItem(
          title: 'M Y  P R O F I L E',
          icon: Icons.person_outline,
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) {
          return const MyProfileScreen();
        },),);
          },
        ),
         DrawerItem(
          title: 'A D D R E S E',
          icon: Icons.location_on_outlined,
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) {
          return const MyAddressScreen();
        },),);
          },
        ),
        const DrawerItem(
          title: 'M Y  O R D E R S',
          icon: Icons.shopping_cart_outlined,
        ),
        const DrawerItem(
          title: 'S E T T I N G S',
          icon: Icons.settings_outlined,
        ),
        const DrawerItem(
          title: 'F A V O R I T E S',
          icon: Icons.favorite_outline,
        ),
        const DrawerItem(
          title: 'N O T I F I C A T I O N S',
          icon: Icons.notifications_outlined,
        ),
        const DrawerItem(
          title: 'P A Y M E N T',
          icon: Icons.payment_outlined,
        ),
        const SizedBox(
          height: 40,
        ),
        ListTile(
          leading: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Log Out',
              style: TextStyles.stylesreguler20(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
          trailing: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.logout,
                color: AppColors.primaryColor,
                size: 28,
              ),
            ),
          ),
        )
      ],
    );
  }
}
