import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String imgurl =
      "https://images.squarespace-cdn.com/content/v1/6144d106ee0f834ae92b4f60/1670430380639-6UKJK7Y4MBPHTMUXODWQ/Mia+Malkova+is+the+baddest+angel+you%27ve+seen+this+week+.jpg?format=1000w";
  MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.grey),
              accountName: Text("Zain Asif"),
              accountEmail: Text("mzainasif15@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  imgurl,
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 10,
              endIndent: 5,
              color: Colors.black,
              height: 5,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text(
                "Mail",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
