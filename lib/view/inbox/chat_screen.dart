import 'package:flutter/material.dart';
import 'package:tiktok/data/dummy_data_service.dart';
import 'package:tiktok/view/inbox/widgets/chat_header.dart';
import 'package:tiktok/view/inbox/widgets/message_buble.dart';
import 'package:tiktok/view/inbox/widgets/message_input.dart';

class ChatScreen extends StatefulWidget {
  final String userName;
  final String profileUrl;
  const ChatScreen(
      {super.key, required this.userName, required this.profileUrl});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final DummyDataService dummyDataService = DummyDataService();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withValues(alpha: .95),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          chatHeader(widget.profileUrl, widget.userName, context),
          Expanded(
            child: ListView.builder(
              reverse: true,
              shrinkWrap: true,
              itemCount: dummyDataService.messages.length,
              itemBuilder: (context, index) {
                final message = dummyDataService.messages[index];
                return messageBuble(message, widget.profileUrl);
              },
            ),
          ),
          MessageInput(messageController: messageController)
        ],
      ),
    );
  }
}
