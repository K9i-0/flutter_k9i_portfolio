import 'package:flutter_k9i_portfolio/features/works/works.dart';
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
        description: 'Type Scaleを選ぶためのText Styleプレビューウィジェットです。',
        packageName: 'text_style_preview',
        pubDevUrl: 'https://pub.dev/packages/text_style_preview',
        githubUrl: 'https://github.com/K9i-0/text_style_preview',
      ),
      Work.mobileApp(
        createdAt: DateTime(2021, 8, 14),
        description: 'ロック機能のあるブックマーク管理アプリです。',
        iconImagePath:
            'https://play-lh.googleusercontent.com/JdIdKgVuXG8eU9Y9qIs1KuQPK623C6mqT_Pj3pV50hMfdt00FWx8lxQdygi9MTtuqA=w240-h480-rw',
        appName: 'Bookmark Safe',
        appStoreUrl: '',
        googlePlayUrl:
            'https://play.google.com/store/apps/details?id=com.k9i.b72',
        githubUrl: 'https://github.com/K9i-0/Bookmark-Safe',
      ),
      Work.webApp(
        createdAt: DateTime(2023, 2, 23),
        description: 'このページです。',
        iconImagePath: '',
        appName: 'K9i\'s Portfolio',
        webUrl: '',
        githubUrl: 'https://github.com/K9i-0/flutter_k9i_portfolio',
      ),
    ];
  }
}
