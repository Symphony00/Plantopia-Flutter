import 'package:flutter/material.dart';

import '../../components/colors.dart';

class RowOfTitleAndBtn extends StatelessWidget {
  const RowOfTitleAndBtn({
    super.key,
    required this.title,
    required this.onPress,
  });

  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TextWithUnderLine(
            title: title,
          ),
          Spacer(),
          TextButton(
            onPressed: onPress,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
            child: const Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TextWithUnderLine extends StatelessWidget {
  const TextWithUnderLine({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 7,
            decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.2)),
          ),
        )
      ]),
    );
  }
}
