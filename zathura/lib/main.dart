import 'package:core/model/build_config.dart';
import 'package:flutter/foundation.dart';
import 'package:zathura/base_app/app_start.dart';

void main() {
  if (kReleaseMode) {
    // debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
    ProductionApp().startApp();
  } else {
    // debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    StagingApp().startApp();
  }
}

class ProductionApp extends AppStart {
  ProductionApp()
      : super(
          ProductionBuildConfig(
            baseUrl: 'google.com',
            appName: 'Zathura',
            appVersion: '1.0.0',
          ),
        );
}

class ProductionBuildConfig extends BuildConfig {
  ProductionBuildConfig(
      {required super.baseUrl,
      required super.appName,
      required super.appVersion});
}

class StagingApp extends AppStart {
  StagingApp()
      : super(
          StagingBuildConfig(
            baseUrl: 'google.com',
            appName: 'Zathura Staging',
            appVersion: '1.0.0',
          ),
        );
}

class StagingBuildConfig extends BuildConfig {
  StagingBuildConfig(
      {required super.baseUrl,
      required super.appName,
      required super.appVersion});
}
