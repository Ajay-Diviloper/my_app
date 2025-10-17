import 'package:flutter/material.dart ';
import 'package:my_app/main.dart';
import 'package:my_app/utils/routes.dart';
import 'package:my_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String days = "30";
    String name = "test Flutter";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
        centerTitle: true, // Centers the title in AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
          children: [
            Text('Welcome to $name'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginroute);
              },
              child: Text('login '),
            ),
          ],
        ),
      ),

      drawer: mydrawer(),
    );
  }
}
