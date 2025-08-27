import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';
import 'utils/fake_user_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FakeUserDB.loadUsers();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
