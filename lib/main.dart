import 'package:realtime_car_tracking_web_app/firebase_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'theme/app_theme.dart';
import 'theme/data_values.dart';
import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseConfig firebaseConfig = FirebaseConfig();

  if (firebaseConfig.apiKey.isEmpty) {
    // ignore: avoid_print
    print(
      'Error: Firebase API Key is missing. Please configure it in .vscode/launch.json or pass --dart-define=FIREBASE_API_KEY=...',
    );
  }

  try {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: firebaseConfig.apiKey,
        projectId: firebaseConfig.projectId,
        messagingSenderId: firebaseConfig.messagingSenderId,
        appId: firebaseConfig.appId,
      ),
    );
  } catch (e) {
    // ignore: avoid_print
    print('Error initializing Firebase: $e');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: DataValues.appName,
      theme: AppThemeData.darkTheme,
      home: const HomePage(),
    );
  }
}
