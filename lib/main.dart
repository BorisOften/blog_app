import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const SignupPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
