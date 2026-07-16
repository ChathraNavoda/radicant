import 'package:flutter/material.dart';
import 'package:radicant/app/theme/app_theme.dart';
import 'package:radicant/features/home/presentation/pages/home_page.dart';

class RadicantApp extends StatelessWidget {
  const RadicantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radicant',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
