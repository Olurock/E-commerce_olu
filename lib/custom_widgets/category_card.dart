import 'package:flutter/material.dart';

import '../constants.dart';

class CategoryCard extends StatelessWidget {
  final IconData icons;
  final String category_name;

  const CategoryCard(
      {super.key, required this.icons, required this.category_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: kWhite,
              shape: BoxShape.circle,
              border: Border.all(color: kprimaryBlue),
            ),
            child: Icon(
              icons,
              color: kprimaryBlue,
              size: 35,
            ),
          ),
          Text(
            category_name,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
