import 'package:flutter/material.dart';

class BuildDawerItem extends StatelessWidget {
  const BuildDawerItem({super.key, required this.drawerLabel});

  final bool? ifSelected = false;

  final String drawerLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 15,
        ),
        child: GestureDetector(
            onTap: () {},
            child: Row(children: [
              SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('',
                      color: ifSelected! ? Colors.orangeAccent : Colors.grey)),
              Text(
                drawerLabel,
                style:
                    TextStyle(color: ifSelected! ? Colors.white : Colors.grey),
              )
            ])));
  }
}
