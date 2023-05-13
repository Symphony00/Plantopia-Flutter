import 'package:flutter/material.dart';
import 'package:plant_ui/views/details/details_screen.dart';

import '../../components/colors.dart';

class PlantCardsList extends StatelessWidget {
  const PlantCardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantCard(
            imgAddress: "assets/images/image_1.png",
            plantName: "Samantha",
            countryName: 'Russia',
            price: '400',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          ),
          PlantCard(
            imgAddress: "assets/images/image_2.png",
            plantName: "Angelica",
            countryName: 'Japan',
            price: '600',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
          ),
          PlantCard(
            imgAddress: "assets/images/image_3.png",
            plantName: "Brassica",
            countryName: 'China',
            price: '800',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          )
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    super.key,
    required this.plantName,
    required this.countryName,
    required this.price,
    required this.imgAddress,
    this.onPress,
  });

  final String imgAddress;
  final String plantName;
  final String countryName;
  final String price;
  final onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: onPress,
      child: Container(
        width: size.width * 0.4,
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        child: Column(
          children: [
            Image.asset(imgAddress),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50.0,
                        color: kPrimaryColor.withOpacity(0.4))
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$plantName\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: countryName.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
