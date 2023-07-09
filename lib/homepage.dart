import 'package:flutter/material.dart';
import 'package:terseer_music_player/responsive/desktop_body.dart';
import 'package:terseer_music_player/responsive/mobile_body.dart';
import 'package:terseer_music_player/responsive/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //     child: Container(
    //   color: Colors.red,
    // ));

    return const ResponsiveLayout(
      desktopBody: DesktopScaffold(),
      mobileBody: MobileScaffold(),
    );
  }
}
