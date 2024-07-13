import 'package:flutter/material.dart';

abstract class TextStyles {
  // fs 12
  static const TextStyle regular12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
  static const TextStyle medium12 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );
  static const TextStyle semibold12 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );
  static const TextStyle bold12 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 12,
  );

  // fs 14
  static const TextStyle regular14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const TextStyle medium14 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.black,
  );
  static const TextStyle semibold14 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black);
  static const TextStyle bold14 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );
  static const TextStyle regular24Pacifico = TextStyle(
      fontSize: 24, fontFamily: 'Pacifico', fontWeight: FontWeight.w400);

  // fs 16
  static const TextStyle regular16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static const TextStyle medium16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const TextStyle semibold16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const TextStyle bold16 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );
  // fs 18
  static const TextStyle regular18 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );
  static const TextStyle medium18 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static const TextStyle semibold18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static const TextStyle bold18 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );
  // fs 20
  static const TextStyle regular20 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );
  static const TextStyle medium20 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );
  static const TextStyle semibold20 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
  static const TextStyle bold20 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
  // fs 22
  static const TextStyle regular22 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 22,
  );
  static const TextStyle medium22 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 22,
  );
  static const TextStyle semibold22 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );
  static const TextStyle bold22 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 22,
  );
  // fs 24
  static const TextStyle regular24 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
  static const TextStyle medium24 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );
  static const TextStyle semibold24 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );
  static const TextStyle bold24 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );
  // fs 26
  static const TextStyle regular26 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 26,
  );
  static const TextStyle medium26 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 26,
  );
  static const TextStyle semibold26 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 26,
  );
  static const TextStyle bold26 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 26,
  );
  // fs 28
  static const TextStyle regular28 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 28,
  );
  static const TextStyle medium28 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 28,
  );
  static const TextStyle semibold28 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 28,
  );
  static const TextStyle bold28 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 28,
  );

  //////////////////////////////////

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle styleBold28(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle styleBold20(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle styleMedium13(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle stylesimibols14(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600);
  }
  static TextStyle stylesimibols16(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600);
  }

  static TextStyle stylesimibols18(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600);
  }
  static TextStyle stylesreguler12(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400);
  }
  static TextStyle stylesreguler16(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400);
  }
  static TextStyle stylesreguler18(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400);
  }
  static TextStyle stylesreguler20(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400);
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 700) {
    return width / 600;
  } else if (width < 150) {
    return width / 900;
  } else {
    return width / 1300;
  }
}
