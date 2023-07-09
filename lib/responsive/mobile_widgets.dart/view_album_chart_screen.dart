import 'package:flutter/material.dart';
import 'package:terseer_music_player/responsive/mobile_widgets.dart/appbar.dart';
import 'package:terseer_music_player/responsive/mobile_widgets.dart/mobile_theme.dart';
import 'package:terseer_music_player/responsive/mobile_widgets.dart/tomorrow_tunes_buttons.dart';

class ViewAlbum extends StatelessWidget {
  const ViewAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const MyAppBar(),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.7),
                                BlendMode.darken),
                            fit: BoxFit.fill,
                            image: const AssetImage(
                                'assets/images/Lead-image-biiger.png'))),

                    width: double.infinity,
                    height: double.infinity,

                    // scale: 0.01,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          // const Color(0xff1A1E1F).withOpacity(0.5),
                          Colors.black.withOpacity(0.1),
                          Colors.transparent.withOpacity(0.3),
                        ],
                        stops: const [0.5, 0.9],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100, left: 28, right: 28),
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/images/Lead-image.png',
                    fit: BoxFit.fill,
                    height: 280,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Tomorrow's tunes",
                  style: TextStyle(
                      color: Color(0xffA4C7C6),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Lorem ipsum dolor sit amet,consectetur adipiscing elit ut aliquam,purus sit amet luctus venenatis',
                    style: kFont15Style,
                  ),
                ),
                Text(
                  '64 songs ~ 16 hrs+',
                  style: kFont15Style,
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TomorrowTunesButtons(
                      width: 100,
                      text: 'play all',
                      imagePath: 'assets/images/Play.png',
                    ),
                    TomorrowTunesButtons(
                      width: 159,
                      text: 'add to collection',
                      imagePath: 'assets/images/Play.png',
                    ),
                    TomorrowTunesButtons(
                        width: 80,
                        text: 'Like',
                        imagePath: 'assets/images/Heart.png'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TomorrowTunesTrackCard(),
                const TomorrowTunesTrackCard(),
                const TomorrowTunesTrackCard(),
                const TomorrowTunesTrackCard(),
                const TomorrowTunesTrackCard(),
                const TomorrowTunesTrackCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TomorrowTunesTrackCard extends StatelessWidget {
  const TomorrowTunesTrackCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0xff33373B).withOpacity(.37),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/Rectangle 18.png',
                scale: 2.5,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Let me love you ~ Krisx',
                  style: kFont15Style,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Single',
                  style: kFont15Style,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  '4:17',
                  style: kFont15Style,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
