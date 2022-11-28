import 'package:admin/models/quote.dart' as popular_quotes_widget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryLightColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   "Popular quotes",
          //   style: Theme.of(context).textTheme.subtitle1,
          // ),
          // SizedBox(
          //   width: double.infinity,
          //   child: DataTable2(
          //     columnSpacing: defaultPadding,
          //     minWidth: 600,
          //     columns: [
          //       DataColumn(
          //         label: Text("Author"),
          //       ),
          //       DataColumn(
          //         label: Text("Date"),
          //       ),
          //       DataColumn(
          //         label: Text("Body"),
          //       ),
          //     ],
          //     rows: List.generate(
          //       popular_quotes_widget.demoRecentFiles.length,
          //       (index) => recentFileDataRow(
          //           popular_quotes_widget.demoRecentFiles[index]),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(popular_quotes_widget.Quote fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              "assets/icons/sound_file.svg",
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(fileInfo.body!)),
    ],
  );
}
