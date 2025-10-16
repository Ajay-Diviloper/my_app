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

  //this is form key
  final _formKey = GlobalKey<FormState>();

  //this move to home method
  moveTohome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      //if form is valid
      //navigate to home page
      // Navigator.pushNamed(context, MyRoutes.homeroute);
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        changebutton = true;
      });
      //this is to wait for 1 second
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
        child: Form(
          key: _formKey,
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Username cannot be empty";
                  }
                  return null;
                },
              ),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cannot be empty";
                  } else if (value.length < 6) {
                    return "Password length should be at least 6";
                  }
                  return null;
                },
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
                onTap: () => moveTohome(context),

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
      ),
    );
  }
}
