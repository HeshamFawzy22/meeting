import 'package:flutter/material.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(MyApp(routes: AppRoutes(),));
}

class MyApp extends StatelessWidget {
  final AppRoutes routes;

  const MyApp({super.key,required this.routes});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4C4DDC)),
        useMaterial3: true,
      ),
      onGenerateRoute: routes.onGenerateRoute,
    );
  }
}
