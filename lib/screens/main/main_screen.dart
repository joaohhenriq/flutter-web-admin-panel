import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
    );
  }
}
