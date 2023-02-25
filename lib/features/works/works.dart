import 'package:flutter_k9i_portfolio/features/works/works_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'works.freezed.dart';
part 'works.g.dart';

@freezed
class Work with _$Work {
  const factory Work.flutterPackage({
    required DateTime createdAt,
    required String description,
    required String packageName,
    required String pubDevUrl,
    required String githubUrl,
  }) = FlutterPackageWork;
  const factory Work.mobileApp({
    required DateTime createdAt,
    required String description,
    required String iconImagePath,
    required String appName,
    required String appStoreUrl,
    required String googlePlayUrl,
    required String githubUrl,
  }) = MobileAppWork;
  const factory Work.webApp({
    required DateTime createdAt,
    required String description,
    required String iconImagePath,
    required String appName,
    required String webUrl,
    required String githubUrl,
  }) = WebAppWork;
}

@riverpod
List<Work> works(WorksRef ref) {
  return ref.watch(worksRepositoryProvider).getWorks();
}
