import 'package:flutter/material.dart';

class SetNewPin extends StatefulWidget {
  @override
  _SetNewPinState createState() => _SetNewPinState();
}

class _SetNewPinState extends State<SetNewPin> {
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
                    "One more step! Input a new Mobile PIN for transaction within this app.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                textFieldContainer(TextInputType.number, "Enter New PIN",
                    Icons.security_outlined, false),
                textFieldContainer(TextInputType.number, "Confirm New PIN",
                    Icons.security_outlined, false),
                longElevButtonContainer(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container longElevButtonContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
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
          "SUBMIT APPLICATION",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
    );
  }

  Container bigImageContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Image.asset(
        "images/pin.png",
        width: MediaQuery.of(context).size.width * 0.7,
      ),
    );
  }

  Container textFieldContainer(keyType, hint, icon, obscure) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: obscure,
        keyboardType: keyType,
        maxLength: 6,
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
