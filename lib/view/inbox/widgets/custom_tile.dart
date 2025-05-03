import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktok/theme/theme.dart';

Widget customTile(
    Color? color, String title, String subtitle, Widget leading, Icon icon) {
  return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        radius: 20,
        child: leading,
      ),
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      titleTextStyle: GoogleFonts.nunitoSans(fontSize: 14, color: kTikTokBlack),
      subtitleTextStyle:
          GoogleFonts.nunitoSans(fontSize: 12, color: kTikTokGrey),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: icon);
}
