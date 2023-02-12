import 'package:flutter_test_task/about/screens/about-screen.dart';
import 'package:flutter_test_task/home/screens/home-screen.dart';
import 'package:flutter_test_task/saved/screens/saved-screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen(key: state.pageKey),
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => AboutScreen(key: state.pageKey),
      ),
      GoRoute(
        path: '/saved',
        builder: (context, state) => SavedScreen(key: state.pageKey),
      ),
    ],
  );
});
