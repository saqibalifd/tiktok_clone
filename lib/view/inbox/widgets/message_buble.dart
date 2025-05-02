import 'package:flutter/material.dart';
import 'package:tiktok/theme/theme.dart';
import 'package:tiktok/models/message_model.dart';

Widget messageBuble(Message message, String imageUrl) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment:
          message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!message.isMe)
          CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage(imageUrl),
          ),
        if (!message.isMe) const SizedBox(width: 8),
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 14,
            ),
            decoration: BoxDecoration(
              color: message.isMe ? kTikTokBlue : kTikTokWhite,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(18),
                topRight: const Radius.circular(18),
                bottomLeft: Radius.circular(message.isMe ? 18 : 4),
                bottomRight: Radius.circular(message.isMe ? 4 : 18),
              ),
            ),
            child: Text(
              message.text,
              style: TextStyle(
                color: kTikTokBlack,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
