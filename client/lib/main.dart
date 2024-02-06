import 'package:flutter/material.dart';

void main() {
  runApp(const Cinemax());
}

class Cinemax extends StatelessWidget {
  const Cinemax({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
