import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stress_management_app/calming_playlist_page.dart';
import 'package:stress_management_app/home_screen.dart';
import 'package:stress_management_app/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalmingPlaylistPage(),

    );

  }

}
