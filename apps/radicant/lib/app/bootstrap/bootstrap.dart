import 'dart:async';
import 'package:flutter/material.dart';
import 'package:radicant/app/app.dart';

/// Encapsulates application initialization and core error boundaries.
Future<void> bootstrap() async {
  // Ensure native bindings are warm before running setup tasks
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: Initialize logging, native secure storage caches, local DBs, Sentry, etc. here

  runApp(const RadicantApp());
}
