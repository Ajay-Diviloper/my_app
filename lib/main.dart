import 'package:flutter/material.dart';
import 'package:my_app/pages/homepage.dart';
import 'package:my_app/pages/loginPage.dart';
import 'package:my_app/utils/routes.dart';
import 'package:my_app/widgets/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // primaryTextTheme: GoogleFonts.latoTextTheme(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),

      routes: {
        "/": (context) => HomePage(),
        MyRoutes.loginroute: (context) => LoginPage(),
        MyRoutes.homeroute: (context) => const HomePage(),
      },
    );
  }
}
