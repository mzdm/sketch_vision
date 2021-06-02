/// Set ups debug settings.
class AppConfig {
  /// If `true` then no APIs will be called and fake data will be used instead.
  static const testMode = false;
}

/// Environmental configuration variables (API keys).
///
/// --dart-define=IBM_VISUAL_RECOGNITION_API_KEY=VALUE --dart-define=IBM_TRANSLATOR_API_KEY=VALUE
class EnvConfig {
  static const IBM_VISUAL_RECOGNITION_API_KEY =
      String.fromEnvironment('IBM_VISUAL_RECOGNITION_API_KEY');
  static const IBM_TRANSLATOR_API_KEY =
      String.fromEnvironment('IBM_TRANSLATOR_API_KEY');
}
