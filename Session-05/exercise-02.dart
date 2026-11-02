import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('شمارنده پیشرفته'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مقدار شمارنده: $counter',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Text('افزایش'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text('صفر کردن', style: TextStyle(color: Colors.white)),
                  ),
                ],
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
در بالای صفحه (AppBar) عنوان "شمارنده پیشرفته" با پس‌زمینه آبی دیده می‌شود
در مرکز صفحه:
1. متنی نمایش‌دهنده مقدار شمارنده (در ابتدا 0)
2. دو دکمه در کنار هم:
   - دکمه "افزایش": با هر کلیک، عدد شمارنده یک واحد بیشتر می‌شود
   - دکمه "صفر کردن" (با رنگ قرمز): با کلیک روی آن، مقدار شمارنده به 0 برمی‌گردد
*/
