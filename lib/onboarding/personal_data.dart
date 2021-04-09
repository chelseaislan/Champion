import 'package:flutter/material.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
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
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
            content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Cancel registration?"),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Continue"))
          ],
        )),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  bigImageContainer(context),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                    child: Text(
                      "Fill in your personal data so we can know you better.",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  textFieldContainer(TextInputType.name,
                      "Full Name (Based on KTP)", Icons.person_outlined, false),
                  textFieldContainer(TextInputType.number, "KTP Number",
                      Icons.format_list_numbered_outlined, false),
                  textFieldContainer(
                      TextInputType.number,
                      "Monthly Income (Rp)",
                      Icons.attach_money_outlined,
                      false),
                  textFieldContainer(TextInputType.name, "Source of Fund",
                      Icons.plagiarism_outlined, false),
                  textFieldContainer(TextInputType.name, "Latest Education",
                      Icons.library_books_outlined, false),
                  textFieldContainer(TextInputType.name, "Insert new @username",
                      Icons.alternate_email_outlined, false),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ktpCardContainer(
                          Icons.credit_card_outlined, "Picture of KTP"),
                      ktpCardContainer(Icons.face_outlined, "Selfie with KTP"),
                    ],
                  ),
                  longElevButtonContainer(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container ktpCardContainer(icon, text) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Card(
        color: Colors.grey[200],
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Icon(
                icon,
                size: MediaQuery.of(context).size.width * 0.15,
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }

  Container bigImageContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Image.asset(
        "images/personaldata.png",
        width: MediaQuery.of(context).size.width * 0.7,
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
          Navigator.of(context).pushNamed("/newpin");
        },
        child: Text(
          "CONTINUE",
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
