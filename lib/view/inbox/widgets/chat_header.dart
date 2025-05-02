import 'package:flutter/material.dart';
import 'package:tiktok/extansion/mediaquery_extension.dart';
import 'package:tiktok/theme/theme.dart';

Widget chatHeader(String profileUrl, String userName, BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: context.screenHeight * .05,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(profileUrl),
                  ),
                ),
                Text(
                  userName,
                  style: TextStyle(
                    color: kTikTokBlack,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.flag),
                SizedBox(
                  width: context.screenWidth * .05,
                ),
                Icon(Icons.more_horiz),
              ],
            )
          ],
        ),
      ),
    ],
  );
}
