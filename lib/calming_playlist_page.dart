import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalmingPlaylistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(Icons.expand_more),
                  const Spacer(),
                  const Icon(Icons.menu),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Calming Playlist',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
                  SvgPicture.asset(
                'assets/images/Illustration.svg',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Rain On Glass',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            const Text(
              'By: Painting with Passion',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shuffle, color: Colors.purpleAccent),
                const SizedBox(width: 30),
                Icon(Icons.skip_previous, color: Colors.purpleAccent),
                const SizedBox(width: 30),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.pause, size: 30, color: Colors.purple),
                ),
                const SizedBox(width: 30),
                Icon(Icons.skip_next, color: Colors.purpleAccent),
                const SizedBox(width: 30),
                Icon(Icons.repeat, color: Colors.purpleAccent),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline), label: 'Play'),
        ],
      ),
    );
  }
}
