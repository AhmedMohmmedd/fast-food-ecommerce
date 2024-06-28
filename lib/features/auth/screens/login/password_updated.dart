import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/features/auth/screens/login/change_password.dart';
import 'package:ecommerc/features/auth/screens/login/login.dart';
import 'package:flutter/material.dart';

class PasswordUpdatedScreen extends StatelessWidget {
  const PasswordUpdatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
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
                    Icons.my_library_books_outlined,
                    color: Colors.white,
                    size: 40,
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Congratulation your password\n Has been Updated',
                  style: TextStyle(
                      color: AppColors.dark,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                
               
                const SizedBox(
                  height: 120,
                ),
                CustomElevatedButton(
                  title: 'CONTINUE',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LoginScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
