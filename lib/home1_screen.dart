import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    "همه",
    "مدیتیشن",
    "موزیک",
    "یوگا",
    "خودتو دوست داشته باش",

  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // راست‌چین کردن کل صفحه
      child: Scaffold(
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
                    color: const Color(0xff7696DB),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/breath circle.svg'),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          "سلام \nاگر نیاز به کمک داری اینجا کلیک کن!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
                              color: Colors.black87),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 50),

                // کارت‌های بالایی Yoga و Meditation
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      // کارت Yoga
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          height: 200,
                          decoration: BoxDecoration(
                          color: Colors.red.shade100,

                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // عکس وسط و بزرگتر
                              Center(
                                child:Image.asset(
                                  'assets/images/International day of Yoga-cuate 1.png',
                                  height: 90, // بزرگتر از قبل
                                  width: 300,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                "یوگا",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "دوره",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                "5 قسمت",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      // کارت Meditation
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC8EFF2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // عکس وسط کارت
                              Center(
                                child: Image.asset(
                                  'assets/images/Mindfulness-pana.png', // عکس مدیتیشن
                                  height: 90,  // بزرگتر کردن عکس
                                  width: 80,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                "مدیتیشن",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "دوره",
                                style: TextStyle(fontSize: 13, color: Colors.black54),
                              ),
                              const Spacer(),
                              const Text(
                                "10 قسمت",
                                style: TextStyle(fontSize: 13, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),


                // کارت‌های پایینی Music و Add Mod
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                  Expanded(
                  child: Container(
                  padding: const EdgeInsets.all(16),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // عکس وسط کارت
                      Center(
                        child: Image.asset(
                          'assets/images/Playlist-cuate (1) 1.png', // عکس Music
                          height: 90, // بزرگ‌تر کن
                          width: 140,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "موزیک",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "آرامش و تمرکز",
                        style: TextStyle(fontSize: 13, color: Colors.black54),
                      ),
                      const Spacer(),
                      const Text(
                        "10 ترک",
                        style: TextStyle(fontSize: 13, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
        ),

                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC3E4FD),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // عکس وسط کارت
                              Center(
                                child: Image.asset(
                                  'assets/images/personal growth-pana 1.png', // عکس Add Mod
                                  height: 80,  // می‌تونی بزرگ‌تر هم انتخاب کنی
                                  width: 80,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                "خودتو دوست داشته باش",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "اکشن",
                                style: TextStyle(fontSize: 13, color: Colors.black54),
                              ),
                              const Spacer(),
                              const Text(
                                "الان",
                                style: TextStyle(fontSize: 12, color: Colors.black87),
                              ),
                            ],
                          ),
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
          items:  [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                height: 32,
                width: 32,
              ),
              label: "",
            ),

            BottomNavigationBarItem(icon: SvgPicture.asset(
              'assets/icons/person.svg',
              height: 36,
              width: 36,
            ),
              label: "",
            ),
            BottomNavigationBarItem(icon: SvgPicture.asset(
              'assets/icons/Vector (1).svg',
              height: 36,
              width: 36,
            ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
