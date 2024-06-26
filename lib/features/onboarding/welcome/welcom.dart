import 'package:ecommerc/core/app_styles/images_strings.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/onboarding/on_boarding/screens/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    navigatOnBoarding(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset(ImagesStrings.logo),),

          //    const SizedBox(height: 20,),
          //  const   Text('Fast Food', style: TextStyles.bold22,),
          ],
        ),
      ),


    );
  }
}
void navigatOnBoarding(context){
  Future.delayed(
   const Duration( seconds: 3),
    (){
       Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const OnBoardingScreen();
        },),);
    // GoRouter.of(context).pushReplacement('/OnBoardingScreen');
    }
  );
}