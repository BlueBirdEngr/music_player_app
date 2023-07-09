import 'dart:ui';

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: Center(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 10),
            child: SizedBox(
              width: 400,
              height: 400,
              child: Image.asset('assets/images/Rectangle 20.png'),
            ),
          ),
        ),
      ),
    );
  }
}
