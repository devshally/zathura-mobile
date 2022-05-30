import 'dart:async';

import 'package:core/core.dart';
import 'package:firebase/firebase_auth_services/firebase_auth_services.dart';
import 'package:firebase/firebase_firestore_services/firestore_services.dart';
import 'package:get_it/get_it.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServiceInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies(
      {required GetIt injector, required BuildConfig buildConfig}) {
    //Firebase services
    injector.registerLazySingleton<FirestoreService>(() => FirestoreServiceImpl(
          firestore: injector.get(),
        ));
    injector.registerLazySingleton<FirebaseAuthServices>(
        () => FirebaseAuthServicesImpl(auth: injector.get()));

    //Firebase instances
    injector.registerLazySingleton<FirebaseFirestore>(
        () => FirebaseFirestore.instance);
    injector.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  }
}
