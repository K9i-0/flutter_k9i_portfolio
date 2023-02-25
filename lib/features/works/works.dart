import 'package:flutter_k9i_portfolio/features/works/works_repository.dart';
import 'package:flutter_k9i_portfolio/resources/assets.gen.dart';
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
    required AssetGenImage iconImage,
    required String appName,
    required String appStoreUrl,
    required String googlePlayUrl,
    String? githubUrl,
  }) = MobileAppWork;
  const factory Work.webApp({
    required DateTime createdAt,
    required String description,
    required String appName,
    String? webUrl,
    required String githubUrl,
  }) = WebAppWork;
}

enum WorksSortOrderState {
  createdAtDesc,
  createdAtAsc,
}

@riverpod
class WorksSortOrder extends _$WorksSortOrder {
  @override
  WorksSortOrderState build() => WorksSortOrderState.createdAtDesc;

  void toggle() {
    state = state == WorksSortOrderState.createdAtDesc
        ? WorksSortOrderState.createdAtAsc
        : WorksSortOrderState.createdAtDesc;
  }
}

@riverpod
List<Work> works(WorksRef ref) {
  final sortOrder = ref.watch(worksSortOrderProvider);
  return ref.watch(worksRepositoryProvider).getWorks()
    ..sort(
      (a, b) {
        switch (sortOrder) {
          case WorksSortOrderState.createdAtDesc:
            return b.createdAt.compareTo(a.createdAt);
          case WorksSortOrderState.createdAtAsc:
            return a.createdAt.compareTo(b.createdAt);
        }
      },
    );
}
