import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Tombol Cream
            ElevatedButton(
              child: const Text('Cream'),
              onPressed: () {
                color = Colors.amber.shade100;

                Navigator.pop(context, color);
              },
            ),

            // Tombol Green
            ElevatedButton(
              child: const Text('Green'),
              onPressed: () {
                color = Colors.green.shade700;

                Navigator.pop(context, color);
              },
            ),

            // Tombol Brown
            ElevatedButton(
              child: const Text('Brown'),
              onPressed: () {
                color = Colors.brown.shade400;

                Navigator.pop(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}