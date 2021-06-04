import 'package:admin/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> list = [
      PieChartSectionData(
        value: 25,
        color: primaryColor,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        value: 20,
        color: Color(0xFF26E5FF),
        showTitle: false,
        radius: 22,
      ),
      PieChartSectionData(
        value: 10,
        color: Color(0xFFFFCF26),
        showTitle: false,
        radius: 19,
      ),
      PieChartSectionData(
        value: 15,
        color: Color(0xFFEE2727),
        showTitle: false,
        radius: 16,
      ),
      PieChartSectionData(
        value: 25,
        color: primaryColor.withOpacity(0.1),
        showTitle: false,
        radius: 13,
      ),
    ];

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                centerSpaceRadius: 70, startDegreeOffset: -90, sections: list),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  '18.5',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.white, fontWeight: FontWeight.w600, height: 0.5),
                ),
                Text('of 128GB')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
