import 'dart:async';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:zathura/base_app/app_injection_component.dart';
import 'package:zathura/base_app/app_setup.dart';
import 'package:zathura/base_app/my_app.dart';

abstract class AppStart {
  final BuildConfig buildConfig;
  final resolvers = <FeatureResolver>[];
  AppStart(this.buildConfig);

  Future<void> startApp() async {
    GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    final routerModule = <RouterModule>[];
    final injectionModule = <InjectionModule>[];

    for (final resolver in resolvers) {
      if (resolver.routerModule != null) {
        routerModule.add(resolver.routerModule!);
      }
      if (resolver.injectionModule != null) {
        injectionModule.add(resolver.injectionModule!);
      }
    }

    await AppSetup().init();

    final injector = await AppInjectionComponent.instance
        .registerModules(modules: injectionModule, config: buildConfig);

    await AppSetup().initStorage(injector.get());

    await runZonedGuarded<Future<void>>(() async {
      runApp(
        MyApp(
          routerModule: routerModule,
          buildConfig: buildConfig,
          intance: injector,
          navigatorKey: navigatorKey,
        ),
      );
    }, (onError, stackTrace) {
      log('App Error on runZonedGuarded',
          error: onError, stackTrace: stackTrace);
    });
  }
}
