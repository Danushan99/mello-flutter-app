import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRM App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
        title: const Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome!'),
              const SizedBox(height: 16),
              AppButton(
                text: 'Primary Button',
                onPressed: () {
                  debugPrint('Primary button pressed');
                },
              ),
              const SizedBox(height: 16),
              AppButton(
                text: 'Loading Button',
                isLoading: true,
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              AppButton(
                text: 'Secondary Button',
                isPrimary: false,
                onPressed: () {
                  debugPrint('Secondary button pressed');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
