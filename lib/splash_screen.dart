import 'dart:async';
import 'package:flutter/material.dart';
import 'introone_screen.dart'; // فقط صفحه اول اینترو

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // بعد از ۲ ثانیه برو به IntroOneScreen
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const IntroOneScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.cover, // تصویر تمام صفحه، نسبت حفظ می‌شود
          child: Image.asset("assets/images/splash.png"),
        ),
      ),
    );
  }
}
