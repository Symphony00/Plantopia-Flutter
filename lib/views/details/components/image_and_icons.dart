import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/colors.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                const IconCard(
                  imgAddress: "assets/icons/sun.svg",
                ),
                const IconCard(
                  imgAddress: "assets/icons/icon_2.svg",
                ),
                const IconCard(
                  imgAddress: "assets/icons/icon_3.svg",
                ),
                const IconCard(
                  imgAddress: "assets/icons/icon_4.svg",
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.8,
            height: size.height * 0.75,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(63),
                bottomLeft: Radius.circular(63),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 60,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
              image: const DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/img.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.imgAddress,
  });

  final String imgAddress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      margin: const EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 20,
              color: kPrimaryColor.withOpacity(0.23),
            ),
            const BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            ),
          ]),
      child: SvgPicture.asset(imgAddress),
    );
  }
}
