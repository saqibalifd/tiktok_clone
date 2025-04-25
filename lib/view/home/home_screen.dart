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
        backgroundColor: Colors.transparent,
        title: SizedBox(
          width: 200,
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: kTikTokWhite,
            unselectedLabelColor: kTikTokGrey,
            labelPadding: EdgeInsets.zero,
            tabs: const [
              Tab(
                child: Text(
                  'Following',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'For You',
                  style: TextStyle(fontSize: 16),
                ),
              ),
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
