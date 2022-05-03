import 'dart:async';
import 'package:core/model/build_config.dart';
import 'package:get_it/get_it.dart';

///[InjectionModule] is used to register depencencies
abstract class InjectionModule {
  FutureOr<void> registerDependencies({
    required GetIt injector,
    required BuildConfig buildConfig,
  });
}
