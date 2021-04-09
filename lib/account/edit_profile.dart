import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: whiteAppBar(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                avatarContainer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Change Avatar",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey[800]),
                    )),
                textFieldContainer(TextInputType.name, "Nickname",
                    Icons.person_outlined, false),
                textFieldContainer(TextInputType.emailAddress, "Email Address",
                    Icons.email_outlined, false),
                textFieldContainer(TextInputType.phone, "Phone Number",
                    Icons.phone_android_outlined, false),
                textFieldContainer(TextInputType.name, "@username",
                    Icons.alternate_email_outlined, false),
                longElevButtonContainer("SAVE CHANGES"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container longElevButtonContainer(text) {
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
          text,
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

  Container avatarContainer() {
    return Container(
      child: CircleAvatar(
        radius: 53,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 50,
          foregroundImage: AssetImage("images/profpic.png"),
        ),
      ),
    );
  }

  AppBar whiteAppBar() {
    return AppBar(
      backgroundColor: Colors.grey[100],
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        "Edit Profile",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
