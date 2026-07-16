import 'package:go_router/go_router.dart';

import 'package:radicant/features/home/presentation/pages/home_page.dart';

abstract final class AppRouter {
  const AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [GoRoute(path: '/', builder: (context, state) => const HomePage())],
  );
}
