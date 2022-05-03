///[BuildConfig] is used to set app constants
///As is required for your app, you can use this class to set constants
abstract class BuildConfig {
  final String baseUrl;
  final String appName;
  final String appVersion;

  BuildConfig(
      {required this.baseUrl, required this.appName, required this.appVersion});
}
