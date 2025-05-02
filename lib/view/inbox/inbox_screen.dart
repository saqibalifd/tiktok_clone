import 'package:flutter/material.dart';
import 'package:tiktok/data/dummy_data_service.dart';
import 'package:tiktok/extansion/mediaquery_extension.dart';
import 'package:tiktok/theme/theme.dart';
import 'package:tiktok/view/inbox/chat_screen.dart';
import 'package:tiktok/view/inbox/widgets/status_item_widget.dart';

import 'widgets/custom_tile.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  final DummyDataService dummyDataService = DummyDataService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.group_add)),
        title: Text(
          'Inbox',
          style: TextStyle(fontSize: 16),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          SizedBox(
            height: context.screenHeight * .14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: dummyDataService.stories.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: index == 0
                        ? MyStoryItemWidget(
                            dummyDataService.stories[index].image,
                            'Saqib Ali',
                            context)
                        : StoryItemWidget(dummyDataService.stories[index].image,
                            dummyDataService.stories[index].title, context));
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dummyDataService.chats.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return index == 0
                    ? customTile(
                        kTikTokBlue,
                        'New followers',
                        'inocent boy started following you',
                        Icon(Icons.group),
                        Icon(Icons.navigate_next))
                    : index == 1
                        ? customTile(
                            kTikTokRed,
                            'Activity',
                            'Ahmed replied to your comment on which you commented on asghal ghroya post',
                            Icon(Icons.notification_important),
                            Icon(Icons.navigate_next))
                        : GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatScreen(
                                    userName: dummyDataService
                                        .chats[index].chatUserName,
                                    profileUrl: dummyDataService
                                        .chats[index].profilePic,
                                  ),
                                )),
                            child: customTile(
                                kTikTokRed,
                                dummyDataService.chats[index].chatUserName,
                                dummyDataService.chats[index].subtitle,
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      dummyDataService.chats[index].profilePic,
                                    )),
                                Icon(Icons.camera_alt_outlined)),
                          );
              },
            ),
          )
        ],
      ),
    );
  }
}
