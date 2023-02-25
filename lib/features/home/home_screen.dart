import 'package:flutter/material.dart';
import 'package:flutter_k9i_portfolio/features/settings/settings.dart';
import 'package:flutter_k9i_portfolio/resources/assets.gen.dart';
import 'package:flutter_k9i_portfolio/utils/build_context_x.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:text_style_preview/text_style_preview.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Theme.of(context).brightness;
    return const Scaffold(
      body: Content(),
    );
  }
}

class Content extends ConsumerWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          expandedHeight: 300,
          flexibleSpace: const FlexibleSpaceBar(
            expandedTitleScale: 1,
            // overflowの警告を消すためにmaxHeightを指定
            title: OverflowBox(
              maxHeight: double.infinity,
              child: Header(),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // ダークとライトの２択で切り替える（シンプルさ重視でsystemは使わない）
                if (Theme.of(context).brightness == Brightness.light) {
                  ref
                      .read(settingsProvider.notifier)
                      .setThemeMode(ThemeMode.dark);
                } else {
                  ref
                      .read(settingsProvider.notifier)
                      .setThemeMode(ThemeMode.light);
                }
              },
              // systemを見せないためにthemeModeは使わない
              icon: Icon(
                Theme.of(context).brightness == Brightness.light
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                title: Text(index.toString()),
              );
            },
            childCount: 100,
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(32),
        ClipOval(
          child: Assets.images.profileIcon.image(
            width: 100,
          ),
        ),
        const Gap(16),
        TextStylePreview(
          child: Text(
            "K9i",
            style: context.textTheme.headlineMedium,
          ),
        ),
        const Gap(8),
        TextStylePreview(
          child: Text(
            "Flutter Developer 💙",
            style: context.textTheme.bodyMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => launchUrlString('https://twitter.com/K9i_apps'),
              icon: const Icon(
                Bootstrap.twitter,
              ),
            ),
            IconButton(
              onPressed: () => launchUrlString('https://github.com/K9i-0'),
              icon: const Icon(
                Bootstrap.github,
              ),
            ),
          ],
        )
      ],
    );
  }
}
