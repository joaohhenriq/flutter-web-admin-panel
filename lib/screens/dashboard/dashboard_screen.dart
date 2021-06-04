import 'package:admin/constants.dart';
import 'package:admin/screens/main/components/header.dart';
import 'package:admin/screens/main/components/storage_details.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            StorageDetails(),
          ],
        ),
      ),
    );
  }
}
