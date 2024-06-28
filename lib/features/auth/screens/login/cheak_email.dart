import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:flutter/material.dart';

class CheakEmmailScreen extends StatelessWidget {
  const CheakEmmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  child: const Center(
                      child: Icon(
                    Icons.mark_email_read_outlined,
                    color: Colors.white,
                    size: 40,
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Please cheak your email to create\n a new password',
                  style: TextStyle(
                      color: AppColors.dark,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "Email Not Received? ",
                          style: TextStyle(color: AppColors.dark)),
                      TextSpan(
                        text: "Resubmit!",
                        style: TextStyles.semibold14,
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                CustomElevatedButton(
                  title: 'CONTINUE',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
