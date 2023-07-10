import 'package:flutter/material.dart';

class DolcherMoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  static final _appBar = AppBar();

  @override
  Size get preferredSize => _appBar.preferredSize;
  const DolcherMoreAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      // backgroundColor: const Color(0xff1e1e1e),
      backgroundColor: Colors.transparent,
      title: IconButton(
          onPressed: () {}, icon: Image.asset('assets/images/logo.png')),
      leading: Builder(
        builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset('assets/images/menu 1.png')),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: Image.asset('assets/images/search.png'),
        )
      ],
    );
  }
}
