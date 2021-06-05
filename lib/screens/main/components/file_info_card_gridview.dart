import 'package:admin/constants.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:admin/screens/main/components/file_info_card.dart';
import 'package:flutter/material.dart';

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.2,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiels.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: defaultPadding
      ),
      itemBuilder: (context, index) {
        return FileInfoCard(
          info: demoMyFiels[index],
        );
      },
    );
  }
}
