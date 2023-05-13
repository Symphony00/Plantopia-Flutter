import 'package:flutter/material.dart';

import '../../../components/colors.dart';

class BuyAndRecommendBtn extends StatelessWidget {
  const BuyAndRecommendBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.5,
            height: 84,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20)),
                  ))),
              child: const Text(
                "Buy Now",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Description",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
