import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
        child: Column(
          children: [
            Image.asset('assets/images/login.png', fit: BoxFit.cover),
            SizedBox(height: 20.0),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
              ),
              onChanged: (value) {
                name = value;
                setState(() {});
              },
            ),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
            ),
            SizedBox(height: 40.0),

            // ElevatedButton(
            //   onPressed: () {
            //     // Your login logic here
            //     Navigator.pushNamed(context, MyRoutes.homeroute);
            //   },
            //   style: ElevatedButton.styleFrom(
            //     minimumSize: const Size(150, 45),
            //     backgroundColor: Colors.blue,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            //   child: const Text(
            //     "Login",
            //     style: TextStyle(
            //       fontSize: 18,
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            InkWell(
              onTap: () async {
                // Your login logic here
                // Navigator.pushNamed(context, MyRoutes.homeroute);
                changebutton = true;
                setState(() {});
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },

              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changebutton ? 50 : 150,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue, // ✅ Put color here
                  shape: changebutton ? BoxShape.circle : BoxShape.rectangle,
                  // borderRadius: BorderRadius.circular(10),
                ),

                child: changebutton
                    ? Icon(Icons.done, color: Colors.white)
                    : Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
