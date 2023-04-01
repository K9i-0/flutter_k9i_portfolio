import 'package:flutter_k9i_portfolio/features/works/works.dart';
import 'package:flutter_k9i_portfolio/resources/assets.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'works_repository.g.dart';

@riverpod
WorksRepository worksRepository(WorksRepositoryRef ref) =>
    const WorksRepository();

class WorksRepository {
  const WorksRepository();

  List<Work> getWorks() {
    // DBを使う意味もないので、ハードコーディングしている
    return [
      Work.flutterPackage(
        createdAt: DateTime(2022, 5, 19),
        description: 'ネイティブ向けのTikTok SDKをFlutterから使うためのパッケージです。',
        packageName: 'flutter_tiktok_sdk',
        pubDevUrl: 'https://pub.dev/packages/flutter_tiktok_sdk',
        githubUrl: 'https://github.com/K9i-0/flutter_tiktok_sdk',
      ),
      Work.flutterPackage(
        createdAt: DateTime(2022, 12, 18),
        description: 'Type Scaleを選ぶためのText Styleプレビューウィジェットを提供するパッケージです。',
        packageName: 'text_style_preview',
        pubDevUrl: 'https://pub.dev/packages/text_style_preview',
        githubUrl: 'https://github.com/K9i-0/text_style_preview',
      ),
      Work.flutterPackage(
        createdAt: DateTime(2023, 3, 15),
        description: 'Futureを待つ間に表示するシンプルなローディングダイアログ',
        packageName: 'simple_loading_dialog',
        pubDevUrl: 'https://pub.dev/packages/simple_loading_dialog',
        githubUrl: 'https://github.com/K9i-0/simple_loading_dialog',
      ),
      Work.flutterPackage(
        createdAt: DateTime(2023, 4),
        description: 'Grinderタスクを提供するパッケージ',
        packageName: 'k9i_cli',
        pubDevUrl: 'https://pub.dev/packages/k9i_cli',
        githubUrl: 'https://github.com/K9i-0/k9i_cli',
      ),
      Work.mobileApp(
        createdAt: DateTime(2021, 8, 14),
        description: '秘密のブックマークを安全に管理、クラウド同期、サムネイル画像、ブラウザ使い分け機能付き。',
        iconImage: Assets.images.bookmarkSafe,
        appName: 'Bookmark Safe',
        appStoreUrl: 'https://apps.apple.com/app/id1584945729',
        googlePlayUrl:
            'https://play.google.com/store/apps/details?id=com.k9i.b72',
      ),
      Work.mobileApp(
        createdAt: DateTime(2020, 6, 6),
        description: 'QRコードを自在に使いこなす！読み取り・作成・カスタマイズ・履歴機能付き。',
        iconImage: Assets.images.t2qr,
        appName: 'T2QR',
        appStoreUrl: 'https://apps.apple.com/app/id1518590005',
        googlePlayUrl:
            'https://play.google.com/store/apps/details?id=com.kotahayashi.t2qr',
      ),
      Work.mobileApp(
        createdAt: DateTime(2021, 9, 25),
        description: '画像を選んでオリジナルモンスターを作ろう。',
        iconImage: Assets.images.pokeMaker,
        appName: 'Poke Maker',
        appStoreUrl: 'https://apps.apple.com/app/id1587498140',
        googlePlayUrl:
            'https://play.google.com/store/apps/details?id=com.k9i.pokeMaker',
      ),
      Work.mobileApp(
        createdAt: DateTime(2020, 10, 24),
        description:
            'Trading Card Summonerはオリジナルのトレーディングカードを作成し、カードを交換するアプリです。',
        iconImage: Assets.images.tradingCardSummoner,
        appName: 'Trading Card Summoner',
        appStoreUrl: 'https://apps.apple.com/app/id1538757499',
        googlePlayUrl:
            'https://play.google.com/store/apps/details?id=com.kotahayashi.trading_card_summoner',
      ),
      Work.webApp(
        createdAt: DateTime(2023, 2, 23),
        description:
            'このページです。Githubでソースコードを公開しています。Flutterのベストプラクティス集約リポジトリを兼ねています。',
        appName: "K9i's Portfolio",
        githubUrl: 'https://github.com/K9i-0/flutter_k9i_portfolio',
      ),
    ];
  }
}
