import 'package:flutter/material.dart';
import 'package:lafyuu/constants.dart';

class ItemCard extends StatelessWidget {
  final Image itemImage;
  final String itemDescription;
  final String itemPrice;

  const ItemCard(this.itemImage, this.itemDescription, this.itemPrice,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kGrey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          itemImage,
          Text(
            itemDescription,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            itemPrice,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: kprimaryBlue,
            ),
          )
        ],
      ),
    );
  }
}
