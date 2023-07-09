import 'package:flutter/material.dart';

import '../../model.dart';

class TopChartCard extends StatelessWidget {
  TopChartCard({super.key});

  final List<TopChart> topCharts = [];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 233,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: width * 0.06),
                width: width * 0.75,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xff1A1E1F)),
                child: Container(
                  margin: const EdgeInsets.only(left: 15, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        height: 110,
                        width: 110,
                        decoration: const BoxDecoration(),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          child: Image.asset(
                            'assets/images/Rectangle 14.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Golden age of 80s',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'Sean swadder',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 25, bottom: 14),
                        child: const Text(
                          ' 2:34:45',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 280,
                top: 20,
                child: Container(
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.orangeAccent),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/images/Heart.png'),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
