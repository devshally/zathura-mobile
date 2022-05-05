import 'dart:async';

import 'package:core/abstractions/injection_module.dart';
import 'package:get_it/get_it.dart';
import 'package:core/model/build_config.dart';
import 'package:storage/storage.dart';

class StorageInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies(
      {required GetIt injector, BuildConfig? buildConfig}) {
    injector.registerLazySingleton<Storage>(() => StorageImpl());
  }
}
