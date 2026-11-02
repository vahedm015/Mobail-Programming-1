import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('پروفایل دانشجو'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle,
                size: 120,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              
              const Text(
                'نام: مهدی واحد',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              
              const Text(
                'رشته: مهندسی کامپیوتر',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              
              const Text(
                'شماره دانشجویی: 401234567',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
--- OUTPUT ---
یک صفحه اپلیکیشن موبایل نمایش داده می‌شود.
در بالای صفحه (AppBar) عنوان "پروفایل دانشجو" با پس‌زمینه آبی دیده می‌شود.
در مرکز صفحه:
1. یک آیکون بزرگ آبی رنگ (به نشانه عکس دانشجو).
2. متن نام دانشجو با فونت درشت و توپر.
3. متن رشته تحصیلی.
4. متن شماره دانشجویی.
*/
