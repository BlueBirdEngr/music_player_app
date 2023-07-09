import 'package:flutter/material.dart';

class FriendsImages extends StatelessWidget {
  FriendsImages({super.key});

  final List<String> friendImages = [
    'assets/images/Ellipse 2.png',
    'assets/images/Ellipse 3.png',
    'assets/images/Ellipse 4.png',
    'assets/images/Ellipse 5.png',
    'assets/images/Ellipse 6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < friendImages.length; i++)
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Align(
                    widthFactor: 0.05,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(friendImages[i]),
                    ),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
