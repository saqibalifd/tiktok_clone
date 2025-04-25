import 'package:flutter/material.dart';
import 'package:tiktok/theme.dart';
import 'package:tiktok/view/create/create_scree.dart';
import 'package:tiktok/view/discoverd/discovered_screen.dart';
import 'package:tiktok/view/home/home_screen.dart';
import 'package:tiktok/view/profile/profile_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _currentIndex = 0;

  // List of screens to display
  final List<Widget> _screens = [
    HomeScreen(),
    DiscoverScreen(),
    CreateScreen(),
    HomeScreen(),
    ProfileScreen(), // Changed to ProfileScreen for the "Me" tab
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: _screens[
          _currentIndex], // Add this line to display the current screen
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
        selectedItemColor: theme.bottomNavigationBarTheme.selectedItemColor,
        unselectedItemColor: theme.bottomNavigationBarTheme.unselectedItemColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
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
          const BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage:
                  NetworkImage('https://randomuser.me/api/portraits/men/1.jpg'),
            ),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
