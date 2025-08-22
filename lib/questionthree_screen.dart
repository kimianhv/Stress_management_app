import 'package:flutter/material.dart';
import 'questionfour_screen.dart';

class QuestionThreeScreen extends StatelessWidget {
  const QuestionThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F5E9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // فلش Forward
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios, size: 28),
                onPressed: () => Navigator.pop(context),
              ),
            ),

            // متن سوال وسط‌چین
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "سوال ۳: نوشیدنی مورد علاقه‌ات چیه؟",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Spacer(flex: 2),

            _optionBox(context, "قهوه", const Color(0xFFBCAAA4)),
            _optionBox(context, "چای", const Color(0xFFFF8A80)),
            _optionBox(context, "آبمیوه", const Color(0xFFFFCC80)),
            _optionBox(context, "آب", const Color(0xFF90CAF9)),

            const SizedBox(height: 10),
            _progressBar(3),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _optionBox(BuildContext context, String text, Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const QuestionFourScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.all(16),
        height: 120,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Image.asset('assets/icon.png', width: 40, height: 40),
            const SizedBox(width: 10),
            Expanded(
              child: Text(text,
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _progressBar(int current) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: List.generate(5, (index) {
        final filled = index < current;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          width: 34,
          height: 10,
          decoration: BoxDecoration(color: filled ? Colors.black : Colors.black26, borderRadius: BorderRadius.circular(6)),
        );
      }),
    );
  }
}
