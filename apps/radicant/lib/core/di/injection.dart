import 'package:get_it/get_it.dart';

import '../../features/health/data/services/health_service.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  if (!getIt.isRegistered<HealthService>()) {
    getIt.registerLazySingleton<HealthService>(() => HealthService());
  }
}
