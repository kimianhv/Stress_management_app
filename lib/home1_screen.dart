import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home1Screen(),
    );
  }
}

class Home1Screen extends StatefulWidget {
  const Home1Screen({super.key});

  @override
  State<Home1Screen> createState() => _Home1ScreenState();
}

class _Home1ScreenState extends State<Home1Screen> {
  int _selectedIndex = 0;

  final List<String> categories = [
    "All",
    "Meditation",
    "Music",
    "Yoga",
    "Love yourself",
    "add mod"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // بخش خوشامدگویی
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.blue.shade200,
                      child: const Icon(Icons.waves, color: Colors.white, size: 30),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        "Hey Hana!\nClick here if you need help!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // نوار انتخاب بالا
              SizedBox(
                height: 45,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: categories.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        categories[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              // کارت‌های بالایی
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: CourseCard(
                        title: "Yoga",
                        subtitle: "COURSE",
                        sessions: "7 sessions",
                        color: const Color(0xFFFFACC7),
                        imagePath: "assets/images/yoga.jpg",
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: CourseCard(
                        title: "Meditation",
                        subtitle: "COURSE",
                        sessions: "15 sessions",
                        color: const Color(0xFFC8EFF2),
                        imagePath: "assets/images/yoga.jpg",
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // کارت Love yourself
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2, // این باعث میشه اندازه کارت طول دو کارت بالایی باشه
                      child: CourseCard(
                        title: "Love yourself",
                        subtitle: "COURSE",
                        sessions: "7 minutes",
                        color: Colors.blue.shade100,
                        imagePath: "assets/images/love_yourself.jpg",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // کارت‌های پایینی
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: CourseCard(
                        title: "Music",
                        subtitle: "Relax & Focus",
                        sessions: "10 tracks",
                        color: Colors.purple.shade100,
                        imagePath: "assets/images/music.jpg",
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: CourseCard(
                        title: "Add Mod",
                        subtitle: "Action",
                        sessions: "Now",
                        color: Colors.red.shade100,
                        imagePath: "assets/images/add_mod.jpg",
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
    );
  }
}

// کلاس CourseCard با جایگاه عکس
class CourseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String sessions;
  final Color color;
  final String imagePath;

  const CourseCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.sessions,
    required this.color,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              height: 80,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Text(title,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold)),
          Text(subtitle,
              style: const TextStyle(fontSize: 13, color: Colors.black54)),
          const Spacer(),
          Text(sessions,
              style: const TextStyle(fontSize: 13, color: Colors.black87)),
        ],
      ),
    );
  }
}