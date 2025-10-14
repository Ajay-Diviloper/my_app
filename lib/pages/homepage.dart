import 'package:flutter/material.dart ';
import 'package:my_app/main.dart';
import 'package:my_app/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String days = "30";
    String name = "test Flutter";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
        backgroundColor: Colors.blue, // ✅ AppBar color added
        foregroundColor: Colors.white, // optional: makes text/icons white
        elevation: 4, // optional: adds shadow
      ),
      body: Center(
        child: Column(
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

      drawer: Drawer(),
    );
  }
}
