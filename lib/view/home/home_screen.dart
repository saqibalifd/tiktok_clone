import 'package:flutter/material.dart';
import 'package:tiktok/view/home/following_preview.dart';
import 'package:tiktok/view/home/foryou_preview.dart';

import '../../theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Always dispose controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          width: 150,
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: kTikTokWhite,
            unselectedLabelColor: kTikTokGrey,
            tabs: const [
              Tab(text: 'Following'),
              Tab(text: 'For You'),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          FollowingPreview(),
          ForyouPreview(),
        ],
      ),
    );
  }
}
