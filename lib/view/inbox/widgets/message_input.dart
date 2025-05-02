import 'package:flutter/material.dart';
import 'package:tiktok/theme/theme.dart';

class MessageInput extends StatefulWidget {
  final TextEditingController messageController;
  const MessageInput({super.key, required this.messageController});

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: kTikTokWhite,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: widget.messageController,
                      style: TextStyle(color: kTikTokBlack),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Message...',
                        hintStyle: TextStyle(color: kTikTokGrey),
                      ),
                    ),
                  ),
                  IconButton(
                    icon:
                        Icon(Icons.emoji_emotions_outlined, color: kTikTokGrey),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: Icon(Icons.send, color: kTikTokRed),
            onPressed: () {
              if (widget.messageController.text.trim().isNotEmpty) {
                setState(() {
                  widget.messageController.clear();
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
