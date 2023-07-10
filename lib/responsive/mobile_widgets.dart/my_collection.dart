import 'package:flutter/material.dart';

import 'appbar.dart';
import 'drawer.dart';
import 'mobile_theme.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  int activeIndex = 0;

  bool myCollectionTapped = false;
  bool likesTapped = false;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // tabController.addListener(() {
    //   if (tabController.indexIsChanging) {
    //     setState(() {
    //       activeIndex == tabController.index;
    //     });
    //   }
    // });
    return Scaffold(
      drawer: Builder(builder: (context) {
        return const Drawer(
            backgroundColor: Color(0xff1A1E1F), child: CustomDrawer());
      }),
      // extendBodyBehindAppBar: true,
      appBar: const DolcherMoreAppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.transparent,
              controller: tabController,
              onTap: (index) {
                setState(() {
                  if (index == 0) {
                    myCollectionTapped = true;
                    likesTapped = false;
                  } else {
                    myCollectionTapped = false;
                    likesTapped = true;
                  }
                });
              },
              tabs: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 37,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: myCollectionTapped == true
                              ? Colors.transparent
                              : const Color(0xFFEFEEE0).withOpacity(0.2)),
                      color: myCollectionTapped == true
                          ? const Color(0xffFACD66)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(27)),
                  child: Center(
                    child: Text(
                      'My Collecction',
                      style: TextStyle(
                          color: myCollectionTapped == true
                              ? Colors.grey.shade700
                              : Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 37,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: likesTapped == true
                              ? Colors.transparent
                              : const Color(0xFFEFEEE0).withOpacity(0.2)),
                      color: likesTapped
                          ? const Color(0xffFACD66)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(27)),
                  child: Center(
                    child: Text(
                      'Likes',
                      style: TextStyle(
                          color: likesTapped == true
                              ? Colors.grey.shade700
                              : Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/Rectangle 19.png',
                            height: 254,
                            width: 359,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        child: SizedBox(
                          height: 150,
                          width: 359,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Limits',
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'John Watts',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      '2.3m likes',
                                      style: kFont15Style,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 96,
                                height: 96,
                                child: Image.asset('assets/images/Frame 7.png'),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/Rectangle 19.png',
                            height: 254,
                            width: 359,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        child: SizedBox(
                          height: 150,
                          width: 359,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Limits',
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'John Watts',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      '2.3m likes',
                                      style: kFont15Style,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 96,
                                height: 96,
                                child: Image.asset('assets/images/Frame 7.png'),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


// Stack(
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(top: 10),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         'assets/images/Rectangle 19.png',
//                         height: 254,
//                         width: 359,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 150,
//                     child: SizedBox(
//                       height: 150,
//                       width: 359,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.only(left: 20),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   'Limits',
//                                   style: TextStyle(
//                                       fontSize: 24, color: Colors.white),
//                                 ),
//                                 const SizedBox(
//                                   height: 5,
//                                 ),
//                                 const Text(
//                                   'John Watts',
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                                 const SizedBox(
//                                   height: 30,
//                                 ),
//                                 Text(
//                                   '2.3m likes',
//                                   style: kFont15Style,
//                                 )
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             width: 96,
//                             height: 96,
//                             child: Image.asset('assets/images/Frame 7.png'),
//                           )
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),