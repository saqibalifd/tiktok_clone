import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TikTok Color Palette
Color kTikTokBlack = Color(0xFF010101); // TikTok's almost pure black background
Color kTikTokWhite = Color(0xFFFFFFFF); // Pure white for text/icons
Color kTikTokRed = Color(0xFFFE2C55); // TikTok's signature red/pink
Color kTikTokBlue = Color(0xFF25F4EE); // TikTok's teal/blue accent
Color kTikTokGrey = Color(0xFF808080); // Standard grey for secondary text
Color kTikTokDarkGrey = Color(0xFF121212); // Dark grey for some backgrounds
Color kTikTokLightGrey = Color(0xFFE7E7E7); // Light grey for borders/dividers
Color kTikTokGreen = Colors.green;

// Font Weights
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

// TikTok uses Proxima Nova (paid font) or SF Pro (iOS default)
// We'll use SF Pro Text for iOS-like feel and fallback to Roboto
TextStyle tiktokTextStyle = GoogleFonts.getFont(
  'Roboto', // Fallback font
  color: kTikTokWhite,
);

// Main text styles
TextStyle tiktokTitleStyle = tiktokTextStyle.copyWith(
  fontSize: 22,
  fontWeight: bold,
  height: 1.3,
);

TextStyle tiktokHeaderStyle = tiktokTextStyle.copyWith(
  fontSize: 18,
  fontWeight: semiBold,
  height: 1.3,
);

TextStyle tiktokBodyStyle = tiktokTextStyle.copyWith(
  fontSize: 16,
  fontWeight: regular,
  height: 1.5,
);

TextStyle tiktokCaptionStyle = tiktokTextStyle.copyWith(
  fontSize: 14,
  fontWeight: regular,
  height: 1.4,
  color: kTikTokGrey,
);

TextStyle tiktokSmallStyle = tiktokTextStyle.copyWith(
  fontSize: 12,
  fontWeight: regular,
  height: 1.3,
  color: kTikTokGrey,
);

// Special TikTok styles
TextStyle tiktokUsernameStyle = tiktokTextStyle.copyWith(
  fontSize: 16,
  fontWeight: bold,
);

TextStyle tiktokVideoInfoStyle = tiktokTextStyle.copyWith(
  fontSize: 14,
  fontWeight: regular,
);

TextStyle tiktokButtonTextStyle = tiktokTextStyle.copyWith(
  fontSize: 16,
  fontWeight: semiBold,
  color: kTikTokBlack,
);

// Theme Data
final tiktokTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kTikTokBlack,
  primaryColor: kTikTokRed,
  colorScheme: ColorScheme.dark(
    primary: kTikTokRed,
    secondary: kTikTokBlue,
    surface: kTikTokBlack,
  ),
  fontFamily: 'Roboto',
  textTheme: TextTheme(
    displayLarge: tiktokTitleStyle, // Previously headline5
    displayMedium: tiktokHeaderStyle, // Previously headline6
    bodyLarge: tiktokBodyStyle, // Previously bodyText1
    bodyMedium: tiktokBodyStyle, // Previously bodyText2
    bodySmall: tiktokCaptionStyle, // Previously caption
    labelSmall: tiktokSmallStyle, // Previously overline
    labelLarge: tiktokButtonTextStyle, // Previously button
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: kTikTokBlack,
    centerTitle: true,
    titleTextStyle: tiktokHeaderStyle,
    iconTheme: IconThemeData(color: kTikTokWhite),
  ),
  iconTheme: IconThemeData(
    color: kTikTokWhite,
    size: 24,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: kTikTokBlack,
    selectedItemColor: kTikTokWhite,
    unselectedItemColor: kTikTokGrey,
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
  ),
);
