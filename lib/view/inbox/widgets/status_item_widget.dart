import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktok/extansion/mediaquery_extension.dart';
import 'package:tiktok/theme/theme.dart';

Widget StoryItemWidget(
  String imageUrl,
  String title,
  BuildContext context,
) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              kTikTokBlue,
              kTikTokGreen,
            ]),
            borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: kTikTokBlack,
              backgroundImage: AssetImage(imageUrl),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          width: context.screenWidth * .2,
          child: Text(
            overflow: TextOverflow.ellipsis,
            title,
            style: GoogleFonts.nunitoSans(fontSize: 12),
          ),
        ),
      ),
    ],
  );
}

Widget MyStoryItemWidget(
  String imageUrl,
  String title,
  BuildContext context,
) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              kTikTokBlue,
              kTikTokGreen,
            ]),
            borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(imageUrl),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 11,
                    backgroundColor: kTikTokWhite,
                    child: CircleAvatar(
                      backgroundColor: kTikTokBlue.withValues(alpha: .8),
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          width: context.screenWidth * .2,
          child: Text(
            overflow: TextOverflow.ellipsis,
            title,
            style: GoogleFonts.nunitoSans(fontSize: 12),
          ),
        ),
      ),
    ],
  );
}
