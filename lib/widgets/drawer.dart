import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is the url of image which i want to add in MyDrawer
    final imageUrl =
        'https://krishnabhumi.in/blog/wp-content/uploads/2018/04/3.jpg';
    return Drawer(
      // Listview wrapped in a container and
      // we give a background to the Drawer
      child: Container(
        color: Colors.green,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  // here we can add our name and Email in the Drawer
                  accountName: Text('Krishn Kumar'),
                  accountEmail: Text('krishnkumar180895@gmail.com'),
                  // here i gave the image to be shown in the drawer which is from network
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
            )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                color: Colors.white,),
              title: Text('Home',
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.white,),
              title: Text('Profile',
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
                color: Colors.white,),
              title: Text('Mail',
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
