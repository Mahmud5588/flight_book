import 'package:exam/cores/routes/route_names.dart';
import 'package:flutter/material.dart';

import 'cores/routes/route_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.bottomNavBar,
      onGenerateRoute: AppRoute(context: context).onGenerateRoute,
    );
  }
}
