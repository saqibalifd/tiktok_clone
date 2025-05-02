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

// Base TextStyle
TextStyle tiktokTextStyle = GoogleFonts.getFont(
  'Roboto', // Fallback font
  color: kTikTokWhite,
);

// Main text styles for dark theme
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

// -------- DARK THEME --------
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
    displayLarge: tiktokTitleStyle,
    displayMedium: tiktokHeaderStyle,
    bodyLarge: tiktokBodyStyle,
    bodyMedium: tiktokBodyStyle,
    bodySmall: tiktokCaptionStyle,
    labelSmall: tiktokSmallStyle,
    labelLarge: tiktokButtonTextStyle,
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

// -------- LIGHT THEME --------
final tiktokLightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: kTikTokWhite,
  primaryColor: kTikTokRed,
  colorScheme: ColorScheme.light(
    primary: kTikTokRed,
    secondary: kTikTokBlue,
    surface: kTikTokWhite,
  ),
  fontFamily: 'Roboto',
  textTheme: TextTheme(
    displayLarge: tiktokTextStyle.copyWith(
      color: kTikTokBlack,
      fontSize: 22,
      fontWeight: bold,
      height: 1.3,
    ),
    displayMedium: tiktokTextStyle.copyWith(
      color: kTikTokBlack,
      fontSize: 18,
      fontWeight: semiBold,
      height: 1.3,
    ),
    bodyLarge: tiktokTextStyle.copyWith(
      color: kTikTokBlack,
      fontSize: 16,
      fontWeight: regular,
      height: 1.5,
    ),
    bodyMedium: tiktokTextStyle.copyWith(
      color: kTikTokBlack,
      fontSize: 16,
      fontWeight: regular,
      height: 1.5,
    ),
    bodySmall: tiktokTextStyle.copyWith(
      color: kTikTokGrey,
      fontSize: 14,
      fontWeight: regular,
      height: 1.4,
    ),
    labelSmall: tiktokTextStyle.copyWith(
      color: kTikTokGrey,
      fontSize: 12,
      fontWeight: regular,
      height: 1.3,
    ),
    labelLarge: tiktokTextStyle.copyWith(
      color: kTikTokWhite,
      fontSize: 16,
      fontWeight: semiBold,
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: kTikTokWhite,
    centerTitle: true,
    titleTextStyle: tiktokTextStyle.copyWith(
      color: kTikTokBlack,
      fontSize: 18,
      fontWeight: semiBold,
      height: 1.3,
    ),
    iconTheme: IconThemeData(color: kTikTokBlack),
  ),
  iconTheme: IconThemeData(
    color: kTikTokBlack,
    size: 24,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: kTikTokWhite,
    selectedItemColor: kTikTokBlack,
    unselectedItemColor: kTikTokGrey,
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
  ),
);
