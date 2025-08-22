import 'package:flutter/material.dart';

class IntroOneScreen extends StatelessWidget {
  const IntroOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 📸 عکس بالا نصف صفحه
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5, // نصف ارتفاع صفحه
          width: double.infinity,
          child: Image.asset(
            "assets/images/intro1.png",
            fit: BoxFit.cover, // عکس کامل کشیده شه
          ),
        ),

        // 📝 متن درست زیر عکس
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: const [
              Text(
                "عنوان صفحه اول",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7B61FF), // بنفش
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "اینجا متن توضیحات صفحه اول میاد. این متن نزدیک‌تر به عکس قرار گرفته و خیلی پایین نیست.",
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
