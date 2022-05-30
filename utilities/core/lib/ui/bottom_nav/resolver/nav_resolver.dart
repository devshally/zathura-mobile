import 'package:core/core.dart';
import 'package:core/ui/bottom_nav/resolver/nav_injection_module.dart';

class NavResolver implements FeatureResolver {
  @override
  InjectionModule? get injectionModule => NavInjectionModule();

  @override
  RouterModule? get routerModule => null;
}
