import 'package:admin/constants.dart';
import 'package:admin/screens/main/components/profile_card.dart';
import 'package:admin/screens/main/components/search_field.dart';
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
            header(context),
            SizedBox(height: 10,),
            info(context),
          ],
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Row(
      children: [
        Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(flex: 2,),
        Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }

  Widget info(BuildContext context){
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 500,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Container(
            height: 500,
            color: secondaryColor,
          ),
        ),
      ],
    );
  }
}
