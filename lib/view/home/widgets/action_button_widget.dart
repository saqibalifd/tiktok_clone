import 'package:flutter/material.dart';
import 'package:tiktok/theme/theme.dart';

Widget buildActionButton(
  IconData icon,
  String label,
  Color color,
) {
  return Column(
    children: [
      Icon(icon, size: 32, color: color),
      SizedBox(height: 4),
      if (label.isNotEmpty)
        Text(label, style: tiktokSmallStyle.copyWith(color: kTikTokWhite)),
    ],
  );
}
