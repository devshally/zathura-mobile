import 'package:core/core.dart';
import 'package:network/network_resolver/network_injection_module.dart';

class NetworkResolver implements FeatureResolver {
  @override
  InjectionModule? get injectionModule => NetworkInjectionModule();

  @override
  RouterModule? get routerModule => null;
}
