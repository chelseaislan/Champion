import 'package:flutter/material.dart';

class MyCardScreen extends StatefulWidget {
  @override
  _MyCardScreenState createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: whiteAppBar(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hold near terminal to pay "),
                Icon(
                  Icons.contactless_outlined,
                  color: Colors.blue[900],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              "images/card.png",
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: Column(
                  children: [
                    cardDetailContainer("Card Number", "XXXX 3840"),
                    cardDetailContainer("Card Status", "Unlocked"),
                    cardDetailContainer("3D Secure Status", "Active"),
                    cardDetailContainer("Overseas Status", "Indonesia Only"),
                  ],
                ),
              ),
            ),
          ),
          longElevButtonContainer("LOCK CARD TEMPORARILY"),
          longElevButtonContainer("VIEW / CHANGE CARD DETAILS"),
          longElevButtonContainer("DELETE AND GET A NEW CARD"),
        ],
      ),
    );
  }

  Container longElevButtonContainer(text) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: Color(0xff124E78),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
    );
  }

  Container cardDetailContainer(text, value) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800])),
        Text(value,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey[900])),
      ]),
    );
  }

  AppBar whiteAppBar() {
    return AppBar(
      backgroundColor: Colors.grey[100],
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        "My Card",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
