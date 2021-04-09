import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Text(
                    "Welcome to Champion Bank!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                textFieldContainer(TextInputType.emailAddress, "Email Address",
                    Icons.email_outlined, false),
                textFieldContainer(TextInputType.phone, "Phone Number",
                    Icons.phone_android_outlined, false),
                textFieldContainer(TextInputType.text, "Password",
                    Icons.vpn_key_outlined, true),
                textFieldContainer(
                    TextInputType.text,
                    "Referral Code (Optional)",
                    Icons.confirmation_number_outlined,
                    false),
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
          Navigator.of(context).pushReplacementNamed("/login");
        },
        child: Text(
          "I HAVE AN ACCOUNT",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Container bigImageContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Image.asset(
        "images/travel1.png",
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
              .pushNamedAndRemoveUntil("/personaldata", (route) => false);
        },
        child: Text(
          "CREATE ACCOUNT",
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
