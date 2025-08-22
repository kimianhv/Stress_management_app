import 'package:flutter/material.dart';
import 'questionone_screen.dart'; // ✅ اضافه شد

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // بالای سفید
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.white,
              child: const Text(
                "ثبت نام",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            // باکس یاسی
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildTextField("نام"),
                  const SizedBox(height: 20),
                  _buildTextField("نام خانوادگی"),
                  const SizedBox(height: 20),
                  _buildTextField("ایمیل"),
                  const SizedBox(height: 20),
                  _buildTextField("تلفن همراه"),
                  const SizedBox(height: 25),
                  // ✅ دکمه ثبت نام -> انتقال به صفحه سوال اول
                  _buildMainButton(context, "ثبت نام", Colors.purple),
                  const SizedBox(height: 25),
                  _buildGoogleButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black26, width: 1.2),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildMainButton(BuildContext context, String text, Color color) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const QuestionOneScreen()),
          );
        },
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildGoogleButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black26, width: 1.2),
      ),
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.arrow_back, color: Colors.black, size: 26),
          Text(
            "ثبت نام با اکانت گوگل",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
          Icon(Icons.g_mobiledata, color: Colors.purple, size: 34),
        ],
      ),
    );
  }
}
