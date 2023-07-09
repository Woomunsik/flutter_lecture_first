import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void initState() {
    tabController = TabController(length: 8, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TabBarScreen",
        ),
      ),
      body: _tabBar(),
    );
  }

  Widget _tabBar() {
    return TabBar(
        controller: tabController,
        unselectedLabelColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
        ),
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        labelColor: Colors.black,
        overlayColor: MaterialStateProperty.all(
          Colors.blue.shade100,
        ),
        splashBorderRadius: BorderRadius.circular(20),
        indicatorWeight: 5,
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        padding: EdgeInsets.symmetric(horizontal: 20),
        // indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
        labelPadding: EdgeInsets.symmetric(horizontal: 20),
        // indicator: BoxDecoration(
        // color: Colors.green,
        // borderRadius: BorderRadius.circular(20),
        // ),

        isScrollable: true,
        tabs: [
          Tab(
            text: "바지",
          ),
          Tab(
            text: "상의",
          ),
          Tab(
            text: "아우터",
          ),
          Tab(
            text: "가방",
          ),
          Tab(
            text: "모자",
          ),
          Tab(
            text: "신발",
          ),
          Tab(
            text: "시계",
          ),
          Tab(
            text: "원피스",
          ),
        ]);
  }
}
