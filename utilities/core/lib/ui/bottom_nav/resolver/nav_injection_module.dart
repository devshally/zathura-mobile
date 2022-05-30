import 'dart:async';

import 'package:core/core.dart';
import 'package:core/ui/bottom_nav/nav_cubit.dart';

class NavInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies(
      {required GetIt injector, BuildConfig? buildConfig}) {
    injector.registerFactory(() => NavCubit());
  }
}
