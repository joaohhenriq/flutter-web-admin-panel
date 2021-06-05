import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png', width: 80,),
            ),
            DrawerListTile(
              title: 'Dashboard',
              press: () {},
              svgSrc: 'assets/icons/menu_dashboard.svg',
            ),
            DrawerListTile(
              title: 'Transaction',
              press: () {},
              svgSrc: 'assets/icons/menu_tran.svg',
            ),
            DrawerListTile(
              title: 'Task',
              press: () {},
              svgSrc: 'assets/icons/menu_task.svg',
            ),
            DrawerListTile(
              title: 'Documents',
              press: () {},
              svgSrc: 'assets/icons/menu_doc.svg',
            ),
            DrawerListTile(
              title: 'Store',
              press: () {},
              svgSrc: 'assets/icons/menu_store.svg',
            ),
            DrawerListTile(
              title: 'Notification',
              press: () {},
              svgSrc: 'assets/icons/menu_notification.svg',
            ),
            DrawerListTile(
              title: 'Profile',
              press: () {},
              svgSrc: 'assets/icons/menu_profile.svg',
            ),
            DrawerListTile(
              title: 'Settings',
              press: () {},
              svgSrc: 'assets/icons/menu_setting.svg',
            ),

          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final String svgSrc;
  final VoidCallback press;

  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        height: 16,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}