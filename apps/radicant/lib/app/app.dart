import 'package:flutter/material.dart';
import 'package:radicant/features/home/presentation/pages/home_page.dart';

class RadicantApp extends StatelessWidget {
  const RadicantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radicant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark, // Clean dev look by default
      ),
      home: const HomePage(),
    );
  }
}
