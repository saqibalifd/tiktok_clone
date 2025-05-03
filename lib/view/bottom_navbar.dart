import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/theme/theme.dart';
import 'package:tiktok/theme/theme_provider.dart';
import 'package:tiktok/view/create/create_screen.dart';
import 'package:tiktok/view/discoverd/discovered_screen.dart';
import 'package:tiktok/view/home/home_screen.dart';
import 'package:tiktok/view/inbox/inbox_screen.dart';
import 'package:tiktok/view/profile/my_profile_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    DiscoverScreen(),
    CreateScreen(),
    InboxScreen(),
    MyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
        selectedItemColor: theme.bottomNavigationBarTheme.selectedItemColor,
        unselectedItemColor: theme.bottomNavigationBarTheme.unselectedItemColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;

            if (index == 0 || index == 1 || index == 2) {
              themeProvider.setDarkTheme();
            } else if (index == 3 || index == 4) {
              themeProvider.setLightTheme();
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(colors: [kTikTokBlue, kTikTokRed])),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  decoration: BoxDecoration(
                    color: kTikTokWhite,
                    border: Border.all(color: kTikTokWhite, width: 2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 28,
                    color: kTikTokBlack,
                  ),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/dummyProfile.jpeg'),
            ),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
