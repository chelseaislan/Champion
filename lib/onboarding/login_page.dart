import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Image.asset(
          "images/header.png",
          width: MediaQuery.of(context).size.width * 0.35,
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                bigImageContainer(context),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Welcome back, Champion!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                textFieldContainer(TextInputType.emailAddress, "Email Address",
                    Icons.email_outlined, false),
                textFieldContainer(TextInputType.text, "Password",
                    Icons.vpn_key_outlined, true),
                longElevButtonContainer(context),
                longTextButtonContainer(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container longTextButtonContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 10),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/resetpage");
        },
        child: Text(
          "RESET PASSWORD",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Container bigImageContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Image.asset(
        "images/password.png",
        width: MediaQuery.of(context).size.width * 0.7,
      ),
    );
  }

  Container longElevButtonContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: Color(0xff124E78),
        ),
        onPressed: () {
          Navigator.of(context)
              .pushNamedAndRemoveUntil("/homenavbar", (route) => false);
        },
        child: Text(
          "LOG IN",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
    );
  }

  Container textFieldContainer(keyType, hint, icon, obscure) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: obscure,
        keyboardType: keyType,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[200])),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.yellow[700], width: 3)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.red[700], width: 3)),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
