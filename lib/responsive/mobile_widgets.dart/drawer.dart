import 'package:flutter/material.dart';
import 'package:terseer_music_player/homepage.dart';
import 'package:terseer_music_player/model.dart';
import 'package:terseer_music_player/responsive/mobile_widgets.dart/my_collection.dart';
import 'package:terseer_music_player/responsive/mobile_widgets.dart/view_album_chart_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool ifSelected = false;
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(children: [
      SizedBox(
        height: height * 0.1,
      ),
      Expanded(
        child: ListView.builder(
            itemCount: DrawerItem.drawerItems.length,
            itemBuilder: (context, index) {
              // ifSelected = currentIndex == index;
              return ListTile(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    checkIndex();

                    // Navigator.pop(context);
                  });
                },
                leading: SizedBox(
                  width: 40,
                  child: Image.asset(
                    DrawerItem.drawerItems[index].drawerIcon,
                    color: index == currentIndex ? Colors.orange : Colors.white,
                  ),
                ),
                title: Text(
                  DrawerItem.drawerItems[index].drawerTitle,
                  style: TextStyle(
                      color:
                          index == currentIndex ? Colors.orange : Colors.white),
                ),
              );
            }),
      ),
    ]);
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Collection(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ViewAlbum(),
        ));
        break;
    }
  }

  void checkIndex() {
    setState(() {
      if (currentIndex == 0) {
        selectedItem(context, 0);
        debugPrint('0 is tapped');
      } else if (currentIndex == 1) {
        selectedItem(context, 1);
      } else if (currentIndex == 2) {
        selectedItem(context, 2);
      } else if (currentIndex == 3) {
        selectedItem(context, 3);
      } else if (currentIndex == 4) {
        selectedItem(context, 4);
      } else if (currentIndex == 5) {
        selectedItem(context, 5);
      } else {
        null;
      }
    });
  }
}
