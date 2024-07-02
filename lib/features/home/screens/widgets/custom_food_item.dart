
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/widgets/custom_favorit_container.dart';
import 'package:flutter/material.dart';

class CustomFoodItem extends StatelessWidget {
  const CustomFoodItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
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
                Container(
                  height: 140,
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
                const Positioned(
                  top: 20,
                  right: 20,
                  child: CustomFavoriteContainer(),
                ),
                const Positioned(
                  bottom: 10,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Cheez Pizza', style: TextStyles.semibold14),
                          SizedBox(width: 4,),
                          Text('1999 Rs', style: TextStyles.bold18),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Text(
                                '4.5',
                              ),
                            ],
                          ),
                          SizedBox(width: 5,),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.red,
                              ),
                              Text(
                                ' 12 Km Away',
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
    );
  }
}
