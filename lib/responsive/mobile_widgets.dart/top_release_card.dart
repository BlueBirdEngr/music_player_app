import 'package:flutter/material.dart';

class TopReleaseCard extends StatelessWidget {
  const TopReleaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.55,
      child: Center(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(left: 30, top: 10, bottom: 10),

                width: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/images/Rectangle 15.png',
                    fit: BoxFit.cover,
                  ),
                ),

                // decoration: const BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(16))),
              );
            }),
      ),
    );
  }
}
