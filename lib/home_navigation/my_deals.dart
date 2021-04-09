import 'package:flutter/material.dart';

class MyDealsScreen extends StatefulWidget {
  @override
  _MyDealsScreenState createState() => _MyDealsScreenState();
}

class _MyDealsScreenState extends State<MyDealsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: whiteAppBar(),
      body: ListView(
        children: [
          dealsContainer("White Elephant Kokas", "Get discount up to 30%!"),
          dealsContainer("MRT Jakarta", "Get discount up to Rp 5.000!"),
          dealsContainer(
              "The Ritz-Carlton Sudirman", "Get discount up to 25%!"),
          dealsContainer("Tokopedia", "Get OVO Points up to Rp 50.000!"),
        ],
      ),
    );
  }

  Container dealsContainer(title, description) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 5),
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
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      )),
                  Container(
                    child: Text(description),
                  ),
                ],
              ),
              Icon(
                Icons.wifi_tethering_outlined,
                size: 40,
              )
            ],
          ),
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
        "Ongoing Deals",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
