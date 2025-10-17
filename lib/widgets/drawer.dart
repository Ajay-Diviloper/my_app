import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  final imageurl = 'assets/images/icon.jfif';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.zero,
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.blue),

              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                margin: EdgeInsets.zero,
                accountName: Text("Ajay Kumar"),
                accountEmail: Text('test@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaler: TextScaler.linear(1.2),
                style: TextStyle(color: Colors.white), // ✅ put it here
              ),
              onTap: () {},
            ),

            // profile
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaler: TextScaler.linear(1.2),
                style: TextStyle(color: Colors.white), // ✅ put it here
              ),
              onTap: () {},
            ),

            //Settinggs
            ListTile(
              leading: Icon(CupertinoIcons.settings_solid, color: Colors.white),
              title: Text(
                "Settings",

                textScaler: TextScaler.linear(1.2),
                style: TextStyle(color: Colors.white), // ✅ put it here
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
