import 'package:flutter/material.dart';
import 'package:terseer_music_player/responsive/mobile_widgets.dart/friends.dart';

class CurrentPlaylistCard extends StatelessWidget {
  const CurrentPlaylistCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: height * 0.01),
          width: width,
          height: height * 0.65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            'assets/images/Rectangle 27.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: width * 0.32,
          top: height * 0.013,
          child: Image.asset('assets/images/Vector.png'),
        ),
        Positioned(
          left: width * 0.1,
          top: height * 0.04,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Currated playlist',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.3,
              ),
              const Text(
                'R & B hits',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  'All mine, Lie again, Petty call me everyday,\nOut of time, No love\n,Bad habit,and so much more',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FriendsImages(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: Image.asset('assets/images/like.png'),
                  ),
                  const Text(
                    '33 Likes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
