import 'package:flutter/material.dart';
import 'package:gf_web/screens/layout/layout.dart';
import '../../styles/styles.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:getflutter/components/tabs/gf_tabBar.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/components/tabs/gf_tabBarView.dart';
import 'package:getflutter/components/tabs/gf_segment_tabs.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        demoImageUrl: 'lib/assets/tabs.gif',
        body: ListView(
          children: <Widget>[
            Text(
              'Tabs',
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
            SizedBox(
              height: 20,
            ),
// GFCard(
            // content: Column(
            Container(
              height: 40,
              margin: EdgeInsets.only(top: 20),
              child: GFSegmentTabs(
                tabController: tabController,
//              height: 38.0,
                width: 280.0,
                initialIndex: 0,
                length: 4,
                tabs: <Widget>[
                  Text(
                    "Icons1",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Tab(
                    child: Text(
                      "Icons2",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Label1",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Label2",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
                tabBarColor: getGFColor(GFColor.light),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: getGFColor(GFColor.white),
                unselectedLabelColor: getGFColor(GFColor.dark),
                indicator: BoxDecoration(
                  color: Colors.black,
                  border: Border(
                    bottom: BorderSide(
                      color: getGFColor(GFColor.success),
                      width: 3.0,
                    ),
                  ),
//                borderRadius: BorderRadius.circular(2.0)
                ),
                indicatorPadding: EdgeInsets.all(8.0),
                indicatorWeight: 2.0,
                border: Border.all(color: Colors.white, width: 2.0),
              ),
//
//
            ),
            Container(
              height: MediaQuery.of(context).size.height - 140,
              child: GFTabBarView(controller: tabController, children: [
                Container(
                    height: 30,
                    color: getGFColor(GFColor.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GFTabBar(
                          initialIndex: 0,
                          length: 4,
                          controller: tabController,
                          tabs: [
                            Tab(
                              icon: Icon(
                                Icons.home,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.music_note,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.games,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.notifications,
                              ),
                            ),
//                            GFIconButton(
//                              icon: Icon(Icons.home,),
//                              onPressed: (){},
//                            ),
                          ],
                          indicatorColor: getGFColor(GFColor.success),
//        indicatorSize: TabBarIndicatorSize.label,
                          labelColor: getGFColor(GFColor.success),
                          labelPadding: EdgeInsets.all(8.0),
                          tabBarColor: getGFColor(GFColor.dark),
                          unselectedLabelColor: getGFColor(GFColor.white),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.white,
                            fontFamily: 'OpenSansBold',
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.black,
                            fontFamily: 'OpenSansBold',
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: 30,
                    color: getGFColor(GFColor.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: getGFColor(GFColor.white),
                              border: Border(
                                  top: BorderSide(
                                      color: getGFColor(GFColor.light)))),
                        ),
                        GFTabBar(
                          initialIndex: 0,
                          length: 4,
                          controller: tabController,
                          tabs: [
                            Tab(
                              icon: Icon(
                                Icons.home,
                              ),
                            ),
                            Tab(
                              icon: Icon(Icons.music_note),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.games,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.notifications,
                              ),
                            ),
                          ],
                          indicatorColor: Colors.teal,

//        indicatorSize: TabBarIndicatorSize.label,
                          labelColor: getGFColor(GFColor.success),
                          labelPadding: EdgeInsets.all(8.0),
                          tabBarColor: getGFColor(GFColor.white),
                          unselectedLabelColor: getGFColor(GFColor.light),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.white,
                            fontFamily: 'OpenSansBold',
                          ),

                          unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.black,
                            fontFamily: 'OpenSansBold',
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: 50,
                    color: getGFColor(GFColor.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: getGFColor(GFColor.white),
                              border: Border(
                                  top: BorderSide(
                                      color: getGFColor(GFColor.light)))),
                        ),
                        GFTabBar(
                          initialIndex: 0,
                          length: 4,
                          controller: tabController,
                          tabs: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.home,
                                ),
                                Text(
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
                                Icon(Icons.music_note,
                                    color: getGFColor(GFColor.light)),
                                Text(
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
                                Text(
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
                                Text(
                                  'Notifications',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ],
                          indicatorColor: Colors.teal,

//        indicatorSize: TabBarIndicatorSize.label,
                          labelColor: getGFColor(GFColor.success),
                          labelPadding: EdgeInsets.all(8.0),
                          tabBarColor: getGFColor(GFColor.dark),
                          unselectedLabelColor: getGFColor(GFColor.light),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.white,
                            fontFamily: 'OpenSansBold',
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.black,
                            fontFamily: 'OpenSansBold',
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: 50,
                    color: getGFColor(GFColor.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: getGFColor(GFColor.white),
                              border: Border(
                                  top: BorderSide(
                                      color: getGFColor(GFColor.light)))),
                        ),
                        GFTabBar(
                          initialIndex: 0,
                          length: 4,
                          controller: tabController,
                          tabs: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.home,
                                ),
                                Text(
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
                                Text(
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
                                Text(
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
                                Text(
                                  'Notifications',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ],
                          indicatorColor: Colors.teal,

//        indicatorSize: TabBarIndicatorSize.label,
                          labelColor: getGFColor(GFColor.success),
                          labelPadding: EdgeInsets.all(8.0),
                          tabBarColor: getGFColor(GFColor.white),
                          unselectedLabelColor: getGFColor(GFColor.light),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.white,
                            fontFamily: 'OpenSansBold',
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                            color: Colors.black,
                            fontFamily: 'OpenSansBold',
                          ),
                        ),
                      ],
                    )),
              ]),
            ),
            // ),
            // ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
