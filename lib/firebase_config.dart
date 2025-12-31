class FirebaseConfig {
  // Values are now retrieved from compile-time environment variables
  // Run with: flutter run --dart-define=FIREBASE_API_KEY=...
  static const _apiKey = String.fromEnvironment('FIREBASE_API_KEY');
  static const _projectId = String.fromEnvironment('FIREBASE_PROJECT_ID');
  static const _messagingSenderId = String.fromEnvironment(
    'FIREBASE_MESSAGING_SENDER_ID',
  );
  static const _appId = String.fromEnvironment('FIREBASE_APP_ID');

  String get apiKey => _apiKey;
  String get projectId => _projectId;
  String get messagingSenderId => _messagingSenderId;
  String get appId => _appId;
}
