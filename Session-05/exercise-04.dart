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
          title: const Text('کارت اطلاعات دانشجو'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.person, size: 40, color: Colors.blue),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'مهدی واحد',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('مهندسی کامپیوتر'),
                          ],
                        ),
                      ],
                    ),
                    const Divider(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('شماره دانشجویی:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('401234567'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('دانشگاه:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('دانشگاه محمد باقر'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
--- OUTPUT ---
یک صفحه اپلیکیشن موبایل نمایش داده می‌شود.
در بالای صفحه (AppBar) عنوان "کارت اطلاعات دانشجو" دیده می‌شود.
در مرکز صفحه، یک کارت (Card) با سایه و گوشه‌های گرد قرار دارد.
داخل کارت:
1. ردیف بالا: یک آیکون آبی (شخص) در سمت راست و در کنار آن نام و رشته تحصیلی.
2. یک خط جداکننده.
3. ردیف پایین: اطلاعات شماره دانشجویی و دانشگاه به صورت کلید و مقدار در دو طرف ردیف.
*/
