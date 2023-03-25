import 'package:flutter/material.dart';
import 'package:flutter_k9i_portfolio/utils/build_context_x.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

/// 存在しないURLにアクセスしたときに表示するページ
class RouteErrorScreen extends StatelessWidget {
  const RouteErrorScreen({super.key, required this.state});
  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: Text(
                context.l10n.routeErrorScreenTitle,
                style: context.textTheme.titleMedium,
              ),
            ),
            const Gap(16),
            Align(
              child: Text(
                context.l10n.routeErrorScreenMessage,
              ),
            ),
            const Gap(32),
            ElevatedButton(
              child: Text(context.l10n.routeErrorScreenBackToHome),
              onPressed: () => context.go('/'),
            ),
          ],
        ),
      ),
    );
  }
}
