import 'package:flutter/material.dart';
import 'package:tiktok/theme.dart';

class ForyouPreview extends StatelessWidget {
  const ForyouPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Video Player Placeholder
          Container(
            color: kTikTokDarkGrey,
            child: Center(
              child:
                  Icon(Icons.play_circle_filled, size: 60, color: kTikTokWhite),
            ),
          ),

          // Right Side Action Buttons
          Positioned(
            right: 16,
            bottom: 15,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: kTikTokWhite,
                ),
                SizedBox(height: 20),
                _buildActionButton(Icons.favorite, '24.5K', kTikTokRed),
                SizedBox(height: 20),
                _buildActionButton(Icons.comment, '1.2K', kTikTokWhite),
                SizedBox(height: 20),
                _buildActionButton(Icons.share, 'Share', kTikTokWhite),
                SizedBox(height: 20),
                _buildActionButton(Icons.music_note, '', kTikTokWhite),
              ],
            ),
          ),

          // Bottom User Info
          Positioned(
            left: 16,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('@username', style: tiktokUsernameStyle),
                SizedBox(height: 8),
                Text('This is an amazing TikTok video! #viral',
                    style: tiktokVideoInfoStyle),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.music_note, size: 16, color: kTikTokWhite),
                    SizedBox(width: 8),
                    Text('Original Sound - username',
                        style: tiktokCaptionStyle),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, Color color) {
    return Column(
      children: [
        Icon(icon, size: 32, color: color),
        SizedBox(height: 4),
        if (label.isNotEmpty)
          Text(label, style: tiktokSmallStyle.copyWith(color: color)),
      ],
    );
  }
}
