import 'package:core/core.dart';

class AppInjectionComponent {
  static AppInjectionComponent instance = AppInjectionComponent._();
  AppInjectionComponent._();

  Future<GetIt> registerModules({
    required List<InjectionModule> modules,
    required BuildConfig config,
  }) async {
    var I = GetIt.I;
    for (final module in modules) {
      await module.registerDependencies(injector: I, buildConfig: config);
    }
    return I;
  }
}
