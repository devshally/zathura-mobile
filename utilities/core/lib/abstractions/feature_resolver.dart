import 'package:core/abstractions/injection_module.dart';
import 'package:core/abstractions/router_module.dart';

///[FeatureResolver] is used to resolve dependencies and router of a feature
abstract class FeatureResolver {
  InjectionModule? get injectionModule;
  RouterModule? get routerModule;
}
