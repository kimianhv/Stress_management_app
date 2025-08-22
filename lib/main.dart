import 'dart:async';
import 'package:flutter/material.dart';
import 'introone_screen.dart';
import 'introtwo_screen.dart';
import 'introthree_screen.dart';
import 'welcome_screen.dart';
import 'signin_screen.dart';
import 'signup_screen.dart';
import 'questionone_screen.dart';
import 'questiontwo_screen.dart';
import 'questionthree_screen.dart';
import 'questionfour_screen.dart';
import 'questionfive_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// ================= SplashScreen =================
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const IntroScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset("assets/images/splash.png"),
        ),
      ),
    );
  }
}

// ================= Intro Screens =================
class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  void goNext() {
    if (currentPage < 2) {
      _pageController.animateToPage(
        currentPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else if (currentPage == 2) {
      // بعد از اینترو سوم میره به Welcome
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
      );
    }
  }

  void goPrev() {
    if (currentPage > 0) {
      _pageController.animateToPage(
        currentPage - 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  final purple = const Color(0xFF7B61FF);
  final pink = const Color(0xFFFF5E9C);
  final blue = const Color(0xFF5C9EFF);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                children: const [
                  IntroOneScreen(),
                  IntroTwoScreen(),
                  IntroThreeScreen(),
                ],
              ),
            ),
            // Indicators
            Positioned(
              bottom: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  Color activeColor;
                  if (index == 0) activeColor = purple;
                  else if (index == 1) activeColor = pink;
                  else activeColor = blue;

                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: 40,
                    height: 12,
                    decoration: BoxDecoration(
                      color: currentPage == index ? activeColor : Colors.grey[300],
                      borderRadius: BorderRadius.circular(6),
                    ),
                  );
                }),
              ),
            ),
            // Navigation arrows
            if (currentPage == 0) ...[
              Positioned(
                bottom: 50,
                left: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, color: Color(0xFF7B61FF), size: 42),
                  onPressed: goNext,
                ),
              ),
            ] else if (currentPage == 1) ...[
              Positioned(
                bottom: 50,
                right: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF7B61FF), size: 42),
                  onPressed: goPrev,
                ),
              ),
              Positioned(
                bottom: 50,
                left: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, color: Color(0xFFFF5E9C), size: 42),
                  onPressed: goNext,
                ),
              ),
            ] else if (currentPage == 2) ...[
              Positioned(
                bottom: 50,
                right: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFFF5E9C), size: 42),
                  onPressed: goPrev,
                ),
              ),
              Positioned(
                bottom: 50,
                left: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, color: Color(0xFF5C9EFF), size: 42),
                  onPressed: goNext,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// ================= Question Flow =================
class QuestionNavigator {
  /// شروع مسیر پرسش‌ها از صفحه اول
  static void startQuestionFlow(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const QuestionOneScreen()),
    );
  }

  /// رفتن به صفحات بعدی پرسش‌ها
  static void nextQuestion(BuildContext context, int currentPage) {
    if (currentPage == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const QuestionTwoScreen()),
      );
    } else if (currentPage == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const QuestionThreeScreen()),
      );
    } else if (currentPage == 3) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const QuestionFourScreen()),
      );
    } else if (currentPage == 4) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const QuestionFiveScreen()),
      );
    } else if (currentPage == 5) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
      );
    }
  }
}
