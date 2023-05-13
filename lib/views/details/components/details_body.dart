import 'package:flutter/material.dart';
import 'package:plant_ui/views/details/components/tag_and_price.dart';

import 'buy_recommend_btn.dart';
import 'image_and_icons.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: const [
          ImageAndIcons(),
          TagAndPrice(
            plantName: 'Angelica',
            country: "Russia",
            price: '400',
          ),
          BuyAndRecommendBtn(),
        ],
      ),
    );
  }
}
