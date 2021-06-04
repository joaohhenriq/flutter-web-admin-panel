import 'package:admin/constants.dart';
import 'package:admin/screens/main/components/pie_chart.dart';
import 'package:admin/screens/main/components/storage_info_card.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          PieChartWidget(),
          StorageInfoCard(
            svgSrc: 'assets/icons/Documents.svg',
            title: 'Documents Files',
            amountOfFiles: '1.4 GB',
            numOfFiles: 1239,
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/media.svg',
            title: 'Documents Files',
            amountOfFiles: '1.4 GB',
            numOfFiles: 1239,
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/folder.svg',
            title: 'Other Files',
            amountOfFiles: '1.4 GB',
            numOfFiles: 1239,
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/unknown.svg',
            title: 'Unknown',
            amountOfFiles: '1.4 GB',
            numOfFiles: 1239,
          ),
        ],
      ),
    );
  }
}
