import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.grey[800],
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                child: Text(
                  "Good morning, Lana!",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text("Total Balance")),
                      balanceContainer(),
                      Divider(
                        height: 20,
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          optionContainer(
                              Icons.swap_vert_circle_outlined, "Transfer"),
                          optionContainer(Icons.local_play_outlined, "Top Up"),
                          optionContainer(
                              Icons.library_books_outlined, "Pay Bills"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text(
                  "Your recent transactions",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              recentContainer("Amazon Prime USA", "CARD110921", "224.000"),
              recentContainer("Starbucks Coffee", "TAP090921", "50.000"),
              recentContainer("H&M Kota Kasablanka", "TAP080921", "830.000"),
              recentContainer("Masjid Istiqlal KP3", "QR070921", "12.000"),
              recentContainer("Starbucks Coffee", "TAP090921", "57.000"),
              longElevButtonContainer("VIEW MORE"),
            ],
          ),
        ],
      ),
    );
  }

  Container longElevButtonContainer(text) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
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

  Container recentContainer(title, trxNum, price) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 3),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      )),
                  Container(
                    child: Text(trxNum),
                  ),
                ],
              ),
              Text(
                "Rp$price",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container balanceContainer() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Rp",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 28, letterSpacing: 1),
          ),
          Text(
            "10.000.000",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 28, letterSpacing: 1),
          ),
        ],
      ),
    );
  }

  Container optionContainer(icon, title) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
      child: Column(
        children: [
          Icon(
            icon,
            size: 35,
            color: Colors.grey[800],
          ),
          Text(title),
        ],
      ),
    );
  }
}
