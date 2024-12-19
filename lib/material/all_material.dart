import 'package:flutter/material.dart';
import 'package:myapp/screens/calll_screen.dart';
import 'package:myapp/screens/home_screen.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;
  void _toggletheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sasti WhatsApp',
      theme:ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: 
      CalllScreen(),
      // MyHomePage(toggleTheme: _toggletheme),
    );
  }
}
