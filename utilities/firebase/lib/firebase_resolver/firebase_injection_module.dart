import 'dart:async';

import 'package:core/core.dart';
import 'package:firebase/firebase_firestore_services/firestore_services.dart';
import 'package:get_it/get_it.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServiceInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies(
      {required GetIt injector, required BuildConfig buildConfig}) {
    //Firebase services
    injector.registerLazySingleton<FirestoreService>(() => FirestoreServiceImpl(
          firestore: injector.get(),
        ));

    //Firebase instances
    injector.registerLazySingleton<FirebaseFirestore>(
        () => FirebaseFirestore.instance);
  }
}
