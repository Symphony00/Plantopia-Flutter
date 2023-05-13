import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/colors.dart';

class TagAndPrice extends StatelessWidget {
  const TagAndPrice({
    super.key,
    required this.plantName,
    required this.country,
    required this.price,
  });

  final String plantName, country, price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$plantName\n",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(fontSize: 16, color: kPrimaryColor),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: const TextStyle(
                fontSize: 20,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
