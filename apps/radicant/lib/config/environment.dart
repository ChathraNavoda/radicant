import 'app_config.dart';
import 'app_environment.dart';

class Environment {
  Environment._();

  static const String _environment = String.fromEnvironment(
    'ENV',
    defaultValue: 'development',
  );

  static AppConfig get config {
    switch (_environment) {
      case 'production':
        return const AppConfig(
          environment: AppEnvironment.production,
          apiBaseUrl: 'https://api.radicant.dev',
          enableLogging: false,
        );

      case 'staging':
        return const AppConfig(
          environment: AppEnvironment.staging,
          apiBaseUrl: 'https://staging-api.radicant.dev',
          enableLogging: true,
        );

      default:
        return const AppConfig(
          environment: AppEnvironment.development,
          apiBaseUrl: 'http://192.168.1.101:3000/api',
          enableLogging: true,
        );
    }
  }
}
