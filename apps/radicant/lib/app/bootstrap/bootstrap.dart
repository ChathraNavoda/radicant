import 'package:flutter/material.dart';
import 'package:radicant/app/app.dart';

import '../../core/di/injection.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const RadicantApp());
}
