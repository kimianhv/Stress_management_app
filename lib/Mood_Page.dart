import 'package:flutter/material.dart';

class MoodPage extends StatelessWidget {
  const MoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ---- Title ----
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "How do you feel today?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.emoji_emotions,
                              size: 36, color: Colors.pink),
                          Icon(Icons.sentiment_satisfied,
                              size: 36, color: Colors.blue),
                          Icon(Icons.sentiment_dissatisfied,
                              size: 36, color: Colors.indigo),
                          Icon(Icons.sentiment_very_dissatisfied,
                              size: 36, color: Colors.grey),
                        ],
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ---- Cards Row ----
                Row(
                  children: [
                    Expanded(
                      child: MoodCard(
                        color: Colors.purple[100]!,
                        minutes: "15 minutes",
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: MoodCard(
                        color: Colors.pink[100]!,
                        minutes: "7 minutes",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // ---- Meditation ----
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.teal[50],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Meditation",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Icon(Icons.play_circle_fill,
                          size: 36, color: Colors.blue),
                    ],
                  ),
                ),

                // ---- Yoga ----
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Yoga",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Icon(Icons.play_circle_fill,
                          size: 36, color: Colors.blue),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // ---- Bottom Navigation ----
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: ''),
        ],
      ),
    );
  }
}

class MoodCard extends StatelessWidget {
  final Color color;
  final String minutes;

  const MoodCard({
    super.key,
    required this.color,
    required this.minutes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(2, 4))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(minutes,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.play_circle_fill,
                  size: 40, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
