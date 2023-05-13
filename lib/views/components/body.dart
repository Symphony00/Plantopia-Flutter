import 'package:flutter/material.dart';
import 'package:plant_ui/components/colors.dart';
import 'package:plant_ui/views/components/plants_card_list.dart';
import 'package:plant_ui/views/components/row_of_title_&_btn.dart';

import 'featured_cards_list.dart';
import 'header_with_search.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size, context),
          RowOfTitleAndBtn(
            title: "Recommended",
            onPress: () {},
          ),
          const PlantCardsList(),
          RowOfTitleAndBtn(
            title: "Featured",
            onPress: () {},
          ),
          const FeaturedCardsList(),
        ],
      ),
    );
  }
}
