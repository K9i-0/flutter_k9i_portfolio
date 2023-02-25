import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_k9i_portfolio/features/settings/settings.dart';
import 'package:flutter_k9i_portfolio/features/works/works.dart';
import 'package:flutter_k9i_portfolio/resources/assets.gen.dart';
import 'package:flutter_k9i_portfolio/resources/flutter_colors.dart';
import 'package:flutter_k9i_portfolio/resources/l10n/generated/l10n.dart';
import 'package:flutter_k9i_portfolio/utils/build_context_x.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:simple_icons/simple_icons.dart';
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
              icon: Icon(
                ref.watch(worksSortOrderProvider) ==
                        WorksSortOrderState.createdAtAsc
                    ? Icons.arrow_upward
                    : Icons.arrow_downward,
              ),
              onPressed: () {
                ref.read(worksSortOrderProvider.notifier).toggle();
              },
            ),
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
        const WorkList(),
        const SliverGap(32),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                icon: const Icon(SimpleIcons.flutter),
                label: const Text('Powered by Flutter'),
                onPressed: () => showLicensePage(context: context),
              ),
            ],
          ),
        ),
        const SliverGap(32),
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
            "K9i (Kota Hayashi)",
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
                SimpleIcons.twitter,
              ),
            ),
            IconButton(
              onPressed: () => launchUrlString('https://github.com/K9i-0'),
              icon: const Icon(
                SimpleIcons.github,
              ),
            ),
            IconButton(
              onPressed: () => launchUrlString('https://zenn.dev/k9i'),
              icon: const Icon(
                SimpleIcons.zenn,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class WorkList extends ConsumerWidget {
  const WorkList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final works = ref.watch(worksProvider);

    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final int itemIndex = index ~/ 2;
            if (index.isEven) {
              final work = works[itemIndex];
              return work.map(
                flutterPackage: (work) => FlutterPackageWorkItem(work: work),
                mobileApp: (work) => MobileAppWorkItem(work: work),
                webApp: (work) => WebAppWorkItem(work: work),
              );
            }

            return const Gap(16);
          },
          childCount: math.max(0, works.length * 2 - 1),
        ),
      ),
    );
  }
}

class WorkItemContainer extends StatelessWidget {
  const WorkItemContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: math.min(864, MediaQuery.of(context).size.width) - 32,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: child,
          ),
        ),
      ),
    );
  }
}

class FlutterPackageWorkItem extends StatelessWidget {
  const FlutterPackageWorkItem({
    super.key,
    required this.work,
  });

  final FlutterPackageWork work;

  @override
  Widget build(BuildContext context) {
    return WorkItemContainer(
      child: Row(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: context.colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: FlutterLogo(size: 50),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  work.packageName,
                  style: context.textTheme.titleLarge?.apply(
                    color: context.colorScheme.onPrimaryContainer,
                  ),
                ),
                const Gap(4),
                Text(
                  work.description,
                  style: context.textTheme.bodyMedium?.apply(
                    color: context.colorScheme.onPrimaryContainer,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CreateAtText(
                      createdAt: work.createdAt,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => launchUrlString(work.pubDevUrl),
                      icon: Icon(
                        SimpleIcons.dart,
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    IconButton(
                      onPressed: () => launchUrlString(work.githubUrl),
                      icon: Icon(
                        SimpleIcons.github,
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileAppWorkItem extends StatelessWidget {
  const MobileAppWorkItem({
    super.key,
    required this.work,
  });

  final MobileAppWork work;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorSchemeSeed: FlutterBrandColors.red.color,
        useMaterial3: true,
        brightness: Theme.of(context).brightness,
      ),
      child: Builder(
        builder: (context) => WorkItemContainer(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: work.iconImage.image(
                  width: 66,
                  height: 66,
                ),
              ),
              const Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      work.appName,
                      style: context.textTheme.titleLarge?.apply(
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      work.description,
                      style: context.textTheme.bodyMedium?.apply(
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CreateAtText(
                          createdAt: work.createdAt,
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () => launchUrlString(work.appStoreUrl),
                          icon: Icon(
                            SimpleIcons.appstore,
                            color: context.colorScheme.onPrimaryContainer,
                          ),
                        ),
                        IconButton(
                          onPressed: () => launchUrlString(work.googlePlayUrl),
                          icon: Icon(
                            SimpleIcons.googleplay,
                            color: context.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WebAppWorkItem extends StatelessWidget {
  const WebAppWorkItem({
    super.key,
    required this.work,
  });

  final WebAppWork work;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorSchemeSeed: FlutterBrandColors.green.color,
        useMaterial3: true,
        brightness: Theme.of(context).brightness,
      ),
      child: Builder(
        builder: (context) => WorkItemContainer(
          child: Row(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.language,
                    color: context.colorScheme.primaryContainer,
                    size: 50,
                  ),
                ),
              ),
              const Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      work.appName,
                      style: context.textTheme.titleLarge?.apply(
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      work.description,
                      style: context.textTheme.bodyMedium?.apply(
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CreateAtText(
                          createdAt: work.createdAt,
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () => launchUrlString(work.githubUrl),
                          icon: Icon(
                            SimpleIcons.github,
                            color: context.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreateAtText extends StatelessWidget {
  const CreateAtText({
    super.key,
    required this.createdAt,
  });

  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
    // TODO(K9i-0): 本来はlocaleの指定は不要なので消したい
    final createdAtFormatter = DateFormat.yMMMd(L10n.of(context).localeName);

    return Text(
      createdAtFormatter.format(createdAt),
      style: context.textTheme.labelMedium?.apply(
        color: context.colorScheme.onPrimaryContainer,
      ),
    );
  }
}
