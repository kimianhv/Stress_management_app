import 'package:flutter/material.dart';
import 'questionfour_screen.dart';

class QuestionThreeScreen extends StatelessWidget {
  const QuestionThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(height: 100),
            const Text(
              "کدوم ویژگی براتون مهم‌تره؟",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...[
              {"text": "مدیتیشن سریع", "color": Colors.deepPurpleAccent},
              {"text": "موسیقی آرامش‌بخش", "color": Colors.amberAccent},
              {"text": "تمرین تنفسی", "color": Colors.pinkAccent},
              {"text": "تمرکز مطالعه", "color": Colors.blueGrey},
            ].map((option) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const QuestionFourScreen()),
                  );
                },
                child: Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  decoration: BoxDecoration(
                    color: option["color"] as Color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      option["text"] as String,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              );
            }),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 20,
                  height: 6,
                  decoration: BoxDecoration(
                    color: index == 2 ? Colors.black : Colors.grey[300],
                    borderRadius: BorderRadius.circular(3),
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
