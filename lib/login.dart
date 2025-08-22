import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // عنوان ورود
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  "ورود",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // کانتینر آبی با فاصله از بالا و پایین
              Container(
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 40), // فاصله بالا و پایین
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // فیلد نام کاربری بزرگ‌تر
                    TextField(
                      textAlign: TextAlign.right,
                      style: const TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "نام کاربری",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // فیلد رمز عبور بزرگ‌تر
                    TextField(
                      textAlign: TextAlign.right,
                      obscureText: true,
                      style: const TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "رمز عبور",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // لینک فراموشی رمز عبور به سمت چپ
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "رمز عبور را فراموش کرده اید؟",
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // دکمه ورود بزرگ‌تر
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "ورود",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    // دکمه ورود با گوگل بزرگ‌تر
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        side: const BorderSide(color: Colors.black54),
                      ),
                      icon: const Icon(Icons.arrow_back, color: Colors.black87),
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "ورود با اکانت گوگل",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.g_mobiledata, color: Colors.blue, size: 28),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
