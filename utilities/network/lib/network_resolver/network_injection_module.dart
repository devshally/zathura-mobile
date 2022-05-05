import 'dart:async';

import 'package:core/abstractions/injection_module.dart';
import 'package:get_it/get_it.dart';
import 'package:core/model/build_config.dart';
import 'package:network/network/api.dart';

class NetworkInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies(
      {required GetIt injector, required BuildConfig buildConfig}) {
    injector.registerLazySingleton(() => Api(buildConfig: buildConfig));
  }
}
