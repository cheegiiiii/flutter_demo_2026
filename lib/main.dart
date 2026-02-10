import 'package:flutter/material.dart';
import 'dart_demo_screen.dart'; // Import the second screen file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('1. Dart Demo'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to the second screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DartDemoScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}