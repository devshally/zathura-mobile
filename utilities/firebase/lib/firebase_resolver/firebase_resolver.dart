import 'package:core/core.dart';
import 'package:firebase/firebase_resolver/firebase_injection_module.dart';

class FirebaseServiceResolver implements FeatureResolver {
  @override
  InjectionModule? get injectionModule => FirebaseServiceInjectionModule();

  @override
  RouterModule? get routerModule => null;
}
