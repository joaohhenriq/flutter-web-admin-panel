import 'package:admin/constants.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key key}) : super(key: key);

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
            'Recent Files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0,
              columns: dataColumnList(),
              rows: dataRowList(),
            ),
          ),
        ],
      ),
    );
  }

  List<DataColumn> dataColumnList() {
    return [
      DataColumn(label: Text('File name')),
      DataColumn(label: Text('Date')),
      DataColumn(label: Text('Size')),
    ];
  }

  List<DataRow> dataRowList() {
    return demoRecentFiles.map((e) => recentFileDataRow(e)).toList();
  }

  DataRow recentFileDataRow(RecentFile file) {
    return DataRow(cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              file.icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(file.title),
            ),
          ],
        ),
      ),
      DataCell(Text(file.date)),
      DataCell(Text(file.size)),
    ]);
  }
}
