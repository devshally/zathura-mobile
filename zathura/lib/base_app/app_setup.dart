import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:storage/storage.dart';

class AppSetup {
  Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await AppTrackingTransparency.requestTrackingAuthorization();
  }

  Future initStorage(Storage storage) async {
    await storage.initStorage();
  }
}
