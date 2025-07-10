import 'package:go_router/go_router.dart';
import '../views/profile_view_page.dart';
import '../views/edit_profile_page.dart';
import '../views/splash_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const ProfileViewPage(),
      ),
      GoRoute(
        path: '/edit',
        builder: (context, state) => const EditProfilePage(),
      ),
    ],
  );
}
