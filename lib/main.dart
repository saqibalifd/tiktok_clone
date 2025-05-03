import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/theme/theme.dart';
import 'package:tiktok/theme/theme_provider.dart';
import 'package:tiktok/view/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: themeProvider.themeMode,
        theme: tiktokLightTheme,
        darkTheme: tiktokTheme,
        home: SplashScreen());
  }
}
