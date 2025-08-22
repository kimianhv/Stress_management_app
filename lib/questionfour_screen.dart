import 'package:flutter/material.dart';
import 'questionfive_screen.dart';

class QuestionFourScreen extends StatelessWidget {
  const QuestionFourScreen({super.key});

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
              "چقدر زمان می‌تونید روزانه صرف کنید؟",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...[
              {"text": "۵ دقیقه", "color": Colors.lightBlueAccent},
              {"text": "۱۰ دقیقه", "color": Colors.green},
              {"text": "۱۵ دقیقه", "color": Colors.deepOrangeAccent},
              {"text": "۲۰ دقیقه یا بیشتر", "color": Colors.purple},
            ].map((option) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const QuestionFiveScreen()),
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
                    color: index == 3 ? Colors.black : Colors.grey[300],
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
