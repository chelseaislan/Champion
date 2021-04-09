import 'package:flutter/material.dart';

class MyAccountScreen extends StatefulWidget {
  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: whiteAppBar(),
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Column(
            children: [
              profileContainer(),
              firstCardContainer(),
              secondCardContainer(context),
            ],
          ),
        ],
      ),
    );
  }

  Container secondCardContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            children: [
              cardDetailsContainer(
                  Icons.security_outlined, "Change Mobile PIN"),
              cardDetailsContainer(Icons.vpn_key_outlined, "Change Password"),
              cardDetailsContainer(Icons.flag_outlined, "Change Language"),
              cardDetailsContainer(
                  Icons.phonelink_erase_sharp, "Unlink Device"),
              cardDetailsContainer(Icons.info_outline, "About Us"),
              GestureDetector(
                onTap: () {
                  // Show Dialog for confirmation
                  return showDialog(
                    context: context,
                    builder: (builder) => AlertDialog(
                      title: Text("Confirmation"),
                      content:
                          Text("Do you really want to log out from Champion?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                "/splash", (route) => false);
                          },
                          child: Text("Log Out"),
                        ),
                      ],
                    ),
                  );
                },
                child:
                    cardDetailsContainer(Icons.exit_to_app_outlined, "Log Out"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container firstCardContainer() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Card(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/editprofile");
                  },
                  child: cardDetailsContainer(
                      Icons.person_outlined, "Edit Profile")),
              cardDetailsContainer(Icons.contact_page_outlined, "My Contacts"),
              cardDetailsContainer(
                  Icons.location_on_outlined, "Correspondence Address"),
              cardDetailsContainer(Icons.book_outlined, "Monthly e-Statements"),
              cardDetailsContainer(
                  Icons.bookmarks_outlined, "Supplementary Data for SPT"),
            ],
          ),
        ),
      ),
    );
  }

  Container cardDetailsContainer(prefixIcon, title) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(prefixIcon, color: Color(0xff124E78)),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
        ],
      ),
    );
  }

  Container profileContainer() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 53,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 50,
              foregroundImage: AssetImage("images/profpic.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lana Del Rey",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "@lanadelrey",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                Text(
                  "Account No: 9310218282",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
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
        "My Account",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
