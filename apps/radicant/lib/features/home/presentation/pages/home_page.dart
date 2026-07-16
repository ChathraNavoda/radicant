import 'package:flutter/material.dart';

import '../../../health/data/models/health_model.dart';
import '../../../health/data/services/health_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<HealthModel> _health;

  @override
  void initState() {
    super.initState();
    _health = HealthService().getHealth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radicant')),
      body: FutureBuilder<HealthModel>(
        future: _health,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('❌ ${snapshot.error}', textAlign: TextAlign.center),
            );
          }

          final health = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(24),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '🟢 API Connected',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 24),

                    Text('Status : ${health.status}'),
                    Text('Service : ${health.service}'),
                    Text('Version : ${health.version}'),
                    Text('Timestamp : ${health.timestamp}'),
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
