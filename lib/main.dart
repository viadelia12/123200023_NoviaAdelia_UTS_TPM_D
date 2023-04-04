import 'package:flutter/material.dart';
import 'package:uts_tpm_novia/pages/login_page.dart';
import 'package:uts_tpm_novia/pages/splash_screen.dart';
import 'package:uts_tpm_novia/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const Splash(),
    );
  }
}
