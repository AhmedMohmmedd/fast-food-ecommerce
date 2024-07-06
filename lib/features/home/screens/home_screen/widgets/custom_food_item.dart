import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_favorit_container.dart';
import 'package:ecommerc/features/home/screens/order_screen/order_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomFoodItem extends StatelessWidget {
  const CustomFoodItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const OrderScreen();
            },
          ),
        );
      },
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 220,
        ),
        child: AspectRatio(
          aspectRatio: 2.5 / 2.5,
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  FractionallySizedBox(
                    heightFactor: .65,
                    child: Container(
                      // height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/food/image3.jfif',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Positioned(
                    top: 20,
                    right: 20,
                    child: CustomFavoriteContainer(),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Cheez Pizza',
                                style: TextStyles.stylesimibols14(context),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '1999 Rs',
                              style: TextStyles.styleBold18(context),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyles.stylesreguler12(context),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.red,
                                ),
                                Text(
                                  ' 12 Km Away',
                                  style: TextStyles.stylesreguler12(context),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
