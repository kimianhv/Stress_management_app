import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Bottom Navigation',
      debugShowCheckedModeBanner: false,
      home: BottomNavDemo(),
    );
  }
}

class BottomNavDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("Main Content")),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xFFEFF0FF),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.home, color: Colors.pinkAccent, size: 30),
            Icon(Icons.chat_bubble_outline, color: Colors.yellow, size: 30),
            Icon(Icons.add_box_outlined, color: Colors.black, size: 30),
            Icon(Icons.person, color: Colors.indigo, size: 30),
            Icon(Icons.play_circle_outline, color: Colors.cyanAccent, size: 30),
          ],
        ),
      ),
    );
  }
}
