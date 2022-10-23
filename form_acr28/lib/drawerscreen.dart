import 'package:flutter/material.dart';
import 'package:form_acr28/main.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawwerScreenState createState() => _DrawwerScreenState();
}

class _DrawwerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Fahmy Rosyadi"),
          currentAccountPicture:
              CircleAvatar(backgroundImage: AssetImage("img/rsydfhmy.jpg")),
          accountEmail: Text("fahmyrosyadi29@gmail.com"),
        ),
        DrawerListTile(
          iconData: Icons.home,
          title: "Home",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.settings,
          title: "Register",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.logout,
          title: "Logout",
          onTilePressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ],
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
