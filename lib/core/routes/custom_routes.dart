import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:itargs/core/routes/route.dart';
import 'package:itargs/core/routes/route_observer.dart';
import 'package:itargs/features/Home/view/screens/home_screen.dart';

mixin AppRouter {
  static final observerProvider = Provider((ref) {
    return AppRouteObserver();
  });

  static final provider = Provider(
    (ref) {
      final observer = ref.watch(observerProvider);
      return GoRouter(
        initialLocation: HomeScreen.route.encodeTemplate(),
        observers: [observer],
        routes: [
          ...<AppRoute>[
            HomeScreen.route,
          ].map((r) => r.toGoRoute()),
        ],
      );
    },
  );
}
