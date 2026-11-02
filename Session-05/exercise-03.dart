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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController familyController = TextEditingController();
  final TextEditingController fieldController = TextEditingController();
  
  String submittedText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('فرم ثبت‌نام ساده'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'نام',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              
              TextField(
                controller: familyController,
                decoration: const InputDecoration(
                  labelText: 'نام خانوادگی',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              
              TextField(
                controller: fieldController,
                decoration: const InputDecoration(
                  labelText: 'رشته تحصیلی',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    submittedText = "نام: ${nameController.text}\n"
                        "نام خانوادگی: ${familyController.text}\n"
                        "رشته: ${fieldController.text}";
                  });
                },
                child: const Text('ثبت اطلاعات'),
              ),
              
              const SizedBox(height: 20),
              
              Text(
                submittedText,
                style: const TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
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
در بالای صفحه (AppBar) عنوان "فرم ثبت‌نام ساده" دیده می‌شود.
در بدنه صفحه، سه کادر ورودی برای نام، نام خانوادگی و رشته تحصیلی قرار دارد.
در زیر آن‌ها یک دکمه "ثبت اطلاعات" وجود دارد.
وقتی کاربر متن‌ها را وارد کرده و دکمه را فشار می‌دهد، اطلاعات وارد شده به صورت متنی سبز رنگ در پایین صفحه نمایش داده می‌شود.
*/
