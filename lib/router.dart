part of 'main.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: '/license',
      builder: (_, __) => LicensePage(
        applicationIcon: Padding(
          padding: const EdgeInsets.all(16),
          child: ClipOval(
            child: Assets.images.profileIcon.image(
              width: 100,
            ),
          ),
        ),
        applicationName: "K9i's Portfolio",
        applicationLegalese: '© 2023 K9i',
      ),
    ),
  ],
  errorBuilder: (context, state) => RouteErrorScreen(state: state),
);
