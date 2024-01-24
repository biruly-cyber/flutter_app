import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://media.licdn.com/dms/image/D4D03AQEuXF8pdOkusQ/profile-displayphoto-shrink_200_200/0/1703070873946?e=2147483647&v=beta&t=3ImQ5rGIY_cqZeRDStd05aVxJAYlgZ8dIzAD52EFzbE";
    return  Drawer(

      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  const [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child:  UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Biruly"),
                  accountEmail: Text("biruly2000@gmail.com"),
                  // currentAccountPicture: Image.network(imageUrl),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )
            ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaler: TextScaler.linear(1.0),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Contact",
                textScaler: TextScaler.linear(1.0),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_right_square,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                textScaler: TextScaler.linear(1.0),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
