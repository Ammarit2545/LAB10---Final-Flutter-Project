import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/login_screen_top_image.dart';
import 'package:flutter_auth/Screens/Welcome/components/welcome_image.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/counting_app.dart';
import 'package:flutter_auth/lab6_menu.dart';
import 'package:flutter_auth/lab7_caculator.dart';
import 'package:flutter_auth/lab8_menu.dart';

import '../../../constants.dart';

class Lobby extends StatelessWidget {
  const Lobby({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new SizedBox(
          width: 500,
          height: 100,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "LOBBY Application".toUpperCase(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),

        const SizedBox(height: 16),
        //
        new SizedBox(
          width: 450,
          height: 450,
          child: ElevatedButton(
            child: LoginScreenTopImage(),
            style: ElevatedButton.styleFrom(primary: kPrimarywhiteColor),
          ),
        ),
        //
        const SizedBox(height: 16),
        new SizedBox(
          width: 500,
          height: 50,
          child: ElevatedButton(
            child: Text("Counting App".toUpperCase(),
                style: TextStyle(color: Colors.black87, fontSize: 20)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Counting();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: kPrimaryLightColor, elevation: 0),
          ),
        ),

        const SizedBox(height: 16),

        new SizedBox(
          width: 500,
          height: 50,
          child: ElevatedButton(
            child: Text("Lab 6".toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 20)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LAB6();
                  },
                ),
              );
            },
            style:
                ElevatedButton.styleFrom(primary: kPrimaryColor, elevation: 0),
          ),
        ),

        const SizedBox(height: 16),

        new SizedBox(
          width: 500,
          height: 50,
          child: ElevatedButton(
            child: Text("Lab 7".toUpperCase(),
                style: TextStyle(color: Colors.black87, fontSize: 20)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LAB7();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: kPrimaryLightColor, elevation: 0),
          ),
        ),

        const SizedBox(height: 16),

        new SizedBox(
          width: 500,
          height: 50,
          child: ElevatedButton(
            child: Text("Lab 8".toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 20)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LAB8();
                  },
                ),
              );
            },
            style:
                ElevatedButton.styleFrom(primary: kPrimaryColor, elevation: 0),
          ),
        ),

        const SizedBox(height: 16),

        new SizedBox(
          width: 100,
          height: 50,
          child: ElevatedButton(
            child: Text("Logout".toUpperCase(),
                style: TextStyle(color: Colors.black, fontSize: 15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomeScreen();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: kPrimarygrayColor, elevation: 0),
          ),
        ),
      ],
    );
  }
}
