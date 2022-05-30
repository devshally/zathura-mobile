import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:network/network_aware/network_aware.dart';
import 'package:zathura/base_app/constants/cubit_states.dart';

class MyApp extends StatefulWidget {
  final List<RouterModule> routerModule;
  final BuildConfig buildConfig;
  final GetIt intance;
  final GlobalKey<NavigatorState> navigatorKey;

  const MyApp({
    super.key,
    required this.routerModule,
    required this.buildConfig,
    required this.intance,
    required this.navigatorKey,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with NetworkAwareState {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MultiBlocProvider(
        providers: getProviders(widget.intance),
        child: MaterialApp(
          title: widget.buildConfig.appName,
          navigatorKey: widget.navigatorKey,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) => generateRoute(settings),
          theme: AppTheme.theme,
          themeMode: ThemeMode.light,
          initialRoute: '/',
        ),
      ),
    );
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    late MaterialPageRoute<dynamic> route;
    for (var element in widget.routerModule) {
      element.getRoutes(settings).forEach((key, value) {
        if (key == settings.name) {
          route = value;
        }
      });
    }
    return route;
  }

  @override
  void onDisconnected() {
    // TODO: implement onDisconnected
  }

  @override
  void onReconnected() {
    // TODO: implement onReconnected
  }
}
