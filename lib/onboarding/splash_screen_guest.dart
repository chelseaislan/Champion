import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdd9513),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.2),
              child: Image.asset(
                "images/splash.png",
                width: MediaQuery.of(context).size.width * 0.5,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/login");
                    },
                    child: splashButtonContainer("LOG IN", Color(0xff124E78))),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/signup");
                    },
                    child: splashButtonContainer("SIGN UP", Color(0xffd9594c))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container splashButtonContainer(text, mycolor) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        color: mycolor,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ));
  }
}
