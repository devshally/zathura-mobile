import 'package:core/abstractions/feature_resolver.dart';
import 'package:core/abstractions/router_module.dart';
import 'package:core/abstractions/injection_module.dart';
import 'package:zathura/base_app/resolver/base_app_injection_module.dart';
import 'package:zathura/base_app/router/base_app_router.dart';

class BaseAppResolver implements FeatureResolver {
  @override
  InjectionModule? get injectionModule => BaseAppInjectionModule();

  @override
  RouterModule? get routerModule => BaseAppRouterModule();
}
