import 'package:flutter/material.dart';
import 'questiontwo_screen.dart';

class QuestionOneScreen extends StatelessWidget {
  const QuestionOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCE4EC),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // 👇 فاصله مناسب برای هم‌ترازی با صفحات بعدی
            const SizedBox(height: 60),

            // متن سوال وسط‌چین
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "سوال ۱: رنگ مورد علاقه‌ات چیه؟",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Spacer(flex: 2),

            _optionBox(context, "قرمز", const Color(0xFFF48FB1)),
            _optionBox(context, "آبی", const Color(0xFF90CAF9)),
            _optionBox(context, "سبز", const Color(0xFFA5D6A7)),
            _optionBox(context, "زرد", const Color(0xFFFFF59D)),

            const SizedBox(height: 10),
            _progressBar(1),
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
          MaterialPageRoute(builder: (_) => const QuestionTwoScreen()),
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
