import 'package:flutter/material.dart';
import 'package:terseer_music_player/responsive/mobile_widgets.dart/drawer.dart';

import 'mobile_widgets.dart/appbar.dart';
import 'mobile_widgets.dart/current_playlist.dart';
import 'mobile_widgets.dart/glass_bottom_navigation_bar.dart';
import 'mobile_widgets.dart/top_chart_card.dart';
import 'mobile_widgets.dart/top_release_card.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // return const Placeholder();
    return Scaffold(
      backgroundColor: const Color(0xff1e1e1e),
      drawer: const Drawer(
          backgroundColor: Color(0xff1A1E1F), child: CustomDrawer()),
      appBar: const MyAppBar(),
      body: Stack(
        children: [
          ListView(
            children: [
              const CurrentPlaylistCard(),
              Container(
                margin:
                    EdgeInsets.only(top: 20, bottom: 10, left: width * 0.06),
                child: const Text(
                  'Top charts',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 23),
                ),
              ),
              TopChartCard(),
              Container(
                margin:
                    EdgeInsets.only(top: 20, bottom: 10, left: width * 0.06),
                child: const Text(
                  'New releases',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 23),
                ),
              ),
              const TopReleaseCard(),
              const SizedBox(
                height: 50,
              )
            ],
          ),
          const Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: GlassBottomNavigationBar(),
          )
        ],
      ),
    );
  }
}
