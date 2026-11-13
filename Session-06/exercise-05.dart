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
      title: 'Exit Dialog',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Exit Confirmation'),
          content: const Text(
            'Are you sure you want to exit?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Exit confirmed!'),
                  ),
                );
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            showExitDialog(context);
          },
          icon: const Icon(Icons.exit_to_app),
          label: const Text('Exit'),
        ),
      ),
    );
  }
}

/*
-------------- OUTPUT --------------

          Home Page

             [ Exit ]

After clicking Exit:

       Exit Confirmation

   Are you sure you want to exit?

       [ Cancel ]   [ Yes ]

Cancel:
Dialog closes and application remains open.

Yes:
Dialog closes and displays:
Exit confirmed!

------------------------------------
*/
