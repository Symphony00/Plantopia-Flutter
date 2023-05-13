import 'package:flutter/material.dart';

import 'components/details_body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailBody(),
    );
  }
}
