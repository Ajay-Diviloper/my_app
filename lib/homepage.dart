import 'package:flutter/material.dart ';

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
        child: Text('Hello, Flutter! $name, welcome to $days days of Flutter'),
      ),

      drawer: Drawer(),
    );
  }
}
