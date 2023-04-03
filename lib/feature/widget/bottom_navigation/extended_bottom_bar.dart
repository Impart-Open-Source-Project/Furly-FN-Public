import 'package:flutter/material.dart';

import '../../../constants/global_constant.dart';
import '../../../constants/hero_tag.dart';
import '../../friend_list/friend_list_view.dart';
import '../../personal_profile/personal_profile.dart';
import '../../setting/setting.dart';
import '../../watch_link/watch_link_view.dart';
import 'bottom_navigation_button.dart';

class ExtendedBottomBar extends StatefulWidget {
  const ExtendedBottomBar({super.key});

  @override
  State<ExtendedBottomBar> createState() => _ExtendedBottomBarState();
}

class _ExtendedBottomBarState extends State<ExtendedBottomBar> {
  final PageController controller = PageController();
  double pageViewHeight = 0;
  int currentPage = 0;

  void resetPageViewHeight() {
    setState(() {
      pageViewHeight = 0;
    });
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.page?.toInt() != currentPage) {
        setState(() {
          currentPage = controller.page?.toInt() ?? 0;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    void extendPageView() {
      if (pageViewHeight != size.height - padding.top - 100) {
        // 100 = bottom bar height
        setState(() {
          pageViewHeight = size.height - padding.top - 100;
        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: WillPopScope(
        onWillPop: () async {
          if (pageViewHeight == 0) {
            return true;
          } else {
            setState(() {
              pageViewHeight = 0;
            });
            return false;
          }
        },
        child: Stack(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pop(context);
              },
              child: const SizedBox.expand(),
            ),
            Positioned(
              bottom: 100.0,
              left: 10,
              right: 10,
              child: AnimatedContainer(
                height: pageViewHeight,
                duration: Global.normalAnimationDuration,
                curve: Curves.easeOutCubic,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFF1C1B1F),
                ),
                child: PageView(
                  controller: controller,
                  children: [
                    const PersonalProfile(),
                    FriendListView(
                      resetPageViewHeight: resetPageViewHeight,
                    ),
                    const WatchLinkView(),
                    const Setting(),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10.0,
              right: 10.0,
              bottom: 20.0,
              child: Hero(
                tag: HeroTag.bottomNavigationButtonHero.name,
                child: Container(
                  height: 74.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color(0xFF1C1B1F),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    child: SizedBox(
                      width: size.width - 20, //20 == padding
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          BottomNavigationButton(
                            isOnClicked: false,
                            onClick: () {
                              extendPageView();
                              controller.animateToPage(
                                0,
                                duration: Global.fastAnimationDuration,
                                curve: Curves.easeInOut,
                              );
                            },
                            child: const Icon(
                              Icons.person,
                              size: 34.0,
                              color: Colors.white,
                            ),
                          ),
                          BottomNavigationButton(
                            isOnClicked: false,
                            onClick: () {
                              extendPageView();
                              controller.animateToPage(
                                1,
                                duration: Global.fastAnimationDuration,
                                curve: Curves.easeInOut,
                              );
                            },
                            child: const Icon(
                              Icons.list_alt,
                              size: 34.0,
                              color: Colors.white,
                            ),
                          ),
                          BottomNavigationButton(
                            isOnClicked: false,
                            onClick: () {
                              extendPageView();
                              controller.animateToPage(
                                2,
                                duration: Global.fastAnimationDuration,
                                curve: Curves.easeInOut,
                              );
                            },
                            child: const Icon(
                              Icons.watch,
                              size: 34.0,
                              color: Colors.white,
                            ),
                          ),
                          BottomNavigationButton(
                            isOnClicked: false,
                            onClick: () {
                              extendPageView();
                              controller.animateToPage(
                                3,
                                duration: Global.fastAnimationDuration,
                                curve: Curves.easeInOut,
                              );
                            },
                            child: const Icon(
                              Icons.settings,
                              size: 34.0,
                              color: Colors.white,
                            ),
                          ),
                          BottomNavigationButton(
                            isOnClicked: false,
                            onClick: () {
                              setState(() {
                                pageViewHeight = 2;
                              });
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 34.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
