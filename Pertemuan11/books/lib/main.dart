import 'package:books/navigation_dialog.dart';
import 'package:flutter/material.dart';
import 'navigation_first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo - Tanggaq',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // Panggil screen pertama navigation
      home: const NavigationDialogScreen(),
    );
  }
}