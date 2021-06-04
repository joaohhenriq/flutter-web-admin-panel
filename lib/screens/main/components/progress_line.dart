import 'package:admin/models/MyFiles.dart';
import 'package:flutter/material.dart';

class ProgressLine extends StatelessWidget {
  final CloudStorageInfo info;
  const ProgressLine({Key key, this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: info.color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * (info.percentage / 100),
              height: 5,
              decoration: BoxDecoration(
                color: info.color,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        ),
      ],
    );
  }
}
