import 'package:flutter/material.dart';

import 'package:radicant/app/router/app_router.dart';
import 'package:radicant/app/theme/app_theme.dart';

class RadicantApp extends StatelessWidget {
  const RadicantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Radicant',
      debugShowCheckedModeBanner: false,

      // Theme
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,

      // Routing
      routerConfig: AppRouter.router,
    );
  }
}
