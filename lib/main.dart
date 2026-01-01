import 'package:flutter/material.dart';

import 'theme/app_theme.dart';
import 'theme/data_values.dart';
import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
