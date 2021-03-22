import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gf_web/screens/layout/layout.dart';
import '../../styles/styles.dart';

class BottomLabeledTabs extends StatefulWidget {
  @override
  _BottomLabeledTabsState createState() => _BottomLabeledTabsState();
}

class _BottomLabeledTabsState extends State<BottomLabeledTabs>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        demoImageUrl: 'lib/assets/gif/tabs.gif',
        body: ListView(
          children: <Widget>[
            Text(
              'Bottom Labeled Tabs',
              style: hintStyleTextblackbolder(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Working with tabs is a common pattern in apps that follow the Material Design guidelines. Flutter includes a convenient way to create tab layouts as part of the material library..',
              style: hintStyleTextblackdull(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: MediaQuery.of(context).size.height - 400,
                child: GFTabBarView(
                  controller: tabController,
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.home,
                        size: 150,
                        color: Colors.grey.withOpacity(0.44),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.music_note,
                        size: 150,
                        color: Colors.grey.withOpacity(0.44),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.games,
                        size: 150,
                        color: Colors.grey.withOpacity(0.44),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.notifications,
                        size: 150,
                        color: Colors.grey.withOpacity(0.44),
                      ),
                    )
                  ],
                )),
            Container(
              child: GFTabBar(
                length: 1,
                controller: tabController,
                tabs: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                      ),
                      const Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.music_note,
                      ),
                      const Text(
                        'Music',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.games,
                      ),
                      const Text(
                        'Games',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.notifications,
                      ),
                      const Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ],
                indicatorColor: GFColors.SUCCESS,
                labelColor: GFColors.SUCCESS,
                labelPadding: const EdgeInsets.all(8),
                tabBarColor: GFColors.DARK,
                unselectedLabelColor: GFColors.WHITE,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.white,
                  fontFamily: 'OpenSansBold',
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.black,
                  fontFamily: 'OpenSansBold',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
