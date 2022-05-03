import 'package:flutter/material.dart';

///[RouterModule] is used to resolve app routes
abstract class RouterModule {
  Map<String, MaterialPageRoute> getRoutes(RouteSettings settings);
}
