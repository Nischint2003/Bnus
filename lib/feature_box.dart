import 'package:ai_app/pallete.dart';
import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  const FeatureBox(
      {super.key,
      required this.color,
      required this.headerText,
      required this.descriptionText});
  final Color color;
  final String headerText;
  final String descriptionText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10).copyWith(left: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                headerText,
                style: const TextStyle(
                    color: Pallete.blackColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cera Pro',
                    fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 3.5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                descriptionText,
                style: const TextStyle(
                    color: Pallete.blackColor,
                    fontFamily: 'Cera Pro',
                    fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
