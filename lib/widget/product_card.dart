import 'package:flutter/material.dart';

// ignore: camel_case_types
class productcard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color bgcolor;
  const productcard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 5),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 5),
          Center(
            child: Image(
              image: AssetImage(image),
              height: 175,
            ),
          ),
        ],
      ),
    );
  }
}
