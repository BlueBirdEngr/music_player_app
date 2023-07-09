class TopChart {
  final String topChartImagePath;
  final String topChartAlbum;
  final String topChartTrackName;
  final String topChartTrackDuration;

  TopChart(
      {required this.topChartImagePath,
      required this.topChartAlbum,
      required this.topChartTrackName,
      required this.topChartTrackDuration});
}

class DrawerItem {
  final String drawerIcon;
  final String drawerTitle;

  DrawerItem({required this.drawerIcon, required this.drawerTitle});

  static final List<DrawerItem> drawerItems = [
    DrawerItem(drawerIcon: 'assets/images/home.png', drawerTitle: 'Home'),
    DrawerItem(
        drawerIcon: 'assets/images/music-library-2.png',
        drawerTitle: 'My Collections'),
    DrawerItem(drawerIcon: 'assets/images/radio.png', drawerTitle: 'Radio'),
    DrawerItem(
        drawerIcon: 'assets/images/video-horizontal.png',
        drawerTitle: 'Music Videos'),
    DrawerItem(drawerIcon: 'assets/images/frame.png', drawerTitle: 'Profile'),
    DrawerItem(drawerIcon: 'assets/images/Logout.png', drawerTitle: ' Log Out'),
  ];
}
