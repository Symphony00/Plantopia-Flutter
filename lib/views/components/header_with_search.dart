import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/colors.dart';

Container HeaderWithSearchBox(Size size, BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
    height: size.height * 0.2,
    child: Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding),
          height: size.height * 0.2 - 27,
          decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Row(
            children: [
              Text(
                "Ui Plantopia",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Image.asset("assets/images/logo.png")
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: kPrimaryColor.withOpacity(0.23),
                        offset: const Offset(0, 10),
                        blurRadius: 50.0)
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: kPrimaryColor),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/icons/search.svg",
                      ))
                ],
              ),
            ))
      ],
    ),
  );
}
