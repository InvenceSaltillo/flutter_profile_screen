import 'package:flutter/material.dart';

import 'src/screens/profile/profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Screen',
      home: ProfileScreen(),
    );
  }
}
