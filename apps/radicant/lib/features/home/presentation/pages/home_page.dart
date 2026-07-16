import 'package:flutter/material.dart';
import 'package:radicant/features/health/data/models/health_model.dart';
import 'package:radicant/core/di/injection.dart';
import '../../../health/data/services/health_service.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/runtime_card.dart';
import '../widgets/backend_status_card.dart';

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
    _health = getIt<HealthService>().getHealth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radicant'), centerTitle: true),
      body: FutureBuilder<HealthModel>(
        future: _health,
        builder: (context, snapshot) {
          final connected =
              snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DashboardHeader(connected: connected),
                const SizedBox(height: 24),
                const RuntimeCard(),
                const SizedBox(height: 24),
                BackendStatusCard(snapshot: snapshot),
              ],
            ),
          );
        },
      ),
    );
  }
}
