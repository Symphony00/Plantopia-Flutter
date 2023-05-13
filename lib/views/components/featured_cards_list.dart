import 'package:flutter/material.dart';

import '../../components/colors.dart';

class FeaturedCardsList extends StatelessWidget {
  const FeaturedCardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          FeaturedPlantCard(
            imgAddress: 'assets/images/bottom_img_1.png',
          ),
          FeaturedPlantCard(
            imgAddress: 'assets/images/bottom_img_2.png',
          ),
          FeaturedPlantCard(
            imgAddress: 'assets/images/bottom_img_1.png',
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    super.key,
    required this.imgAddress,
  });

  final String imgAddress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
          left: kDefaultPadding),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imgAddress),
        ),
      ),
    );
  }
}
