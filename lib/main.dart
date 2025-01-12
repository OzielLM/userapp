import 'package:flutter/material.dart';
import 'package:userapp/config/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: ThemeData(
        colorSchemeSeed: Colors.blueGrey
      ),
    );
  }
}
