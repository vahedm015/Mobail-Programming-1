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
      title: 'Student Management',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

// صفحه اول: صفحه اصلی
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Management'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.school,
              size: 90,
              color: Colors.indigo,
            ),

            const SizedBox(height: 25),

            const Text(
              'Welcome to Student App',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text('Register Student'),
            ),
          ],
        ),
      ),
    );
  }
}

// صفحه دوم: ثبت دانشجو
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final nameController = TextEditingController();
  final idController = TextEditingController();
  final majorController = TextEditingController();

  void registerStudent() {

    String name = nameController.text.trim();
    String id = idController.text.trim();
    String major = majorController.text.trim();

    if (name.isEmpty || id.isEmpty || major.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all fields!'),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StudentInfoPage(
          name: name,
          id: id,
          major: major,
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    idController.dispose();
    majorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Student'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: idController,
              decoration: const InputDecoration(
                labelText: 'Student ID',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: majorController,
              decoration: const InputDecoration(
                labelText: 'Major',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: registerStudent,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

// صفحه سوم: نمایش اطلاعات دانشجو
class StudentInfoPage extends StatelessWidget {

  final String name;
  final String id;
  final String major;

  const StudentInfoPage({
    super.key,
    required this.name,
    required this.id,
    required this.major,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Information'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.account_circle,
              size: 90,
              color: Colors.indigo,
            ),

            const SizedBox(height: 25),

            Text(
              'Name: $name',
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 15),

            Text(
              'Student ID: $id',
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 15),

            Text(
              'Major: $major',
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

/*
-------------- OUTPUT --------------

PAGE 1: HOME PAGE

     Student Management

            🎓

    Welcome to Student App

       [Register Student]


PAGE 2: REGISTER STUDENT

       Register Student

    [ Full Name       ]

    [ Student ID      ]

    [ Major           ]

         [ Submit ]


PAGE 3: STUDENT INFORMATION

       Student Information

            👤

       Name: Vahed

       Student ID: 12345

       Major: Computer Engineering

           [ Back ]

------------------------------------
*/
