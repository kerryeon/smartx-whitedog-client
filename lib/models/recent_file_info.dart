import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'templates/data_table.dart';

class RecentFileInfoKey with DataTableKey<RecentFileInfo> {
  @override
  List<DataColumn> columns() {
    return const [
      DataColumn(
        label: Text('File Name'),
      ),
      DataColumn(
        label: Text('Date'),
      ),
      DataColumn(
        label: Text('Size'),
      ),
    ];
  }

  @override
  DataRow row(RecentFileInfo item) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                item.icon!,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                child: Text(item.title!),
              ),
            ],
          ),
        ),
        DataCell(Text(item.date!)),
        DataCell(Text(item.size!)),
      ],
    );
  }
}

class RecentFileInfo {
  final String? icon, title, date, size;

  const RecentFileInfo({
    this.icon,
    this.title,
    this.date,
    this.size,
  });
}

List<RecentFileInfo> demoRecentFiles = const [
  RecentFileInfo(
    icon: 'assets/icons/xd_file.svg',
    title: 'XD File',
    date: '01-03-2021',
    size: '3.5mb',
  ),
  RecentFileInfo(
    icon: 'assets/icons/Figma_file.svg',
    title: 'Figma File',
    date: '27-02-2021',
    size: '19.0mb',
  ),
  RecentFileInfo(
    icon: 'assets/icons/doc_file.svg',
    title: 'Document',
    date: '23-02-2021',
    size: '32.5mb',
  ),
  RecentFileInfo(
    icon: 'assets/icons/sound_file.svg',
    title: 'Sound File',
    date: '21-02-2021',
    size: '3.5mb',
  ),
  RecentFileInfo(
    icon: 'assets/icons/media_file.svg',
    title: 'Media File',
    date: '23-02-2021',
    size: '2.5gb',
  ),
  RecentFileInfo(
    icon: 'assets/icons/pdf_file.svg',
    title: 'Sales PDF',
    date: '25-02-2021',
    size: '3.5mb',
  ),
  RecentFileInfo(
    icon: 'assets/icons/excle_file.svg',
    title: 'Excel File',
    date: '25-02-2021',
    size: '34.5mb',
  ),
];
