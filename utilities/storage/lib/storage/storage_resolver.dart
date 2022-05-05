import 'package:core/core.dart';
import 'package:storage/storage/storage_injection_module.dart';

class StorageResolver implements FeatureResolver {
  @override
  InjectionModule? get injectionModule => StorageInjectionModule();

  @override
  RouterModule? get routerModule => null;
}
