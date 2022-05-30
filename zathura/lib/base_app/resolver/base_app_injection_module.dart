import 'dart:async';

import 'package:core/core.dart';
import 'package:zathura/base_app/presentation/state/base_app_cubit.dart';

class BaseAppInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies(
      {required GetIt injector, required BuildConfig buildConfig}) {
    injector.registerFactory(() => BaseAppCubit());
  }
}
