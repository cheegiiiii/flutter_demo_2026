import 'package:flutter/material.dart';

class DartDemoScreen extends StatelessWidget {
  const DartDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1. Dart Demo'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              // This ensures the column is at least as tall as the screen
              // so that centering works.
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      print("Hello World!");
                    }, child: const Text('Hello World')),
                    const SizedBox(height: 10),
                    ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
                    const SizedBox(height: 10),
                    ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
                    const SizedBox(height: 10),
                    ElevatedButton(onPressed: () {}, child: const Text('Button 4')),
                    const SizedBox(height: 10),
                    ElevatedButton(onPressed: () {}, child: const Text('Button 5')),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}