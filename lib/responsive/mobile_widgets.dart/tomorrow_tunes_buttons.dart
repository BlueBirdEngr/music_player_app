// ignore: must_be_immutable
import 'package:flutter/material.dart';

import 'mobile_theme.dart';

class TomorrowTunesButtons extends StatelessWidget {
  final double width;
  final String text, imagePath;

  const TomorrowTunesButtons({
    super.key,
    required this.width,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(8),
        color: const Color(0xff33373B).withOpacity(.68),
        width: width,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              imagePath,
              scale: 0.7,
            ),
            Container(
              // color: Colors.blue,
              margin: const EdgeInsets.only(left: 8),
              child: Text(
                text,
                style: kFont15Style,
              ),
            )
          ],
        ),
      ),
    );
  }
}
