import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'templates/data_table.dart';

class FileInfoKey with DataTableKey<FileInfo> {
  @override
  String get title => 'Recent Files';

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
  DataRow row(FileInfo item) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                item.icon,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                child: Text(item.title),
              ),
            ],
          ),
        ),
        DataCell(Text(item.date)),
        DataCell(Text(item.size)),
      ],
    );
  }
}

class FileInfo {
  final String icon, title, date, size;

  const FileInfo({
    required this.icon,
    required this.title,
    required this.date,
    required this.size,
  });
}

List<FileInfo> demoRecentFiles = const [
  FileInfo(
    icon: 'assets/icons/files/xd.svg',
    title: 'XD File',
    date: '01-03-2021',
    size: '3.5mb',
  ),
  FileInfo(
    icon: 'assets/icons/files/figma.svg',
    title: 'Figma File',
    date: '27-02-2021',
    size: '19.0mb',
  ),
  FileInfo(
    icon: 'assets/icons/files/meta/doc.svg',
    title: 'Document',
    date: '23-02-2021',
    size: '32.5mb',
  ),
  FileInfo(
    icon: 'assets/icons/files/meta/sound.svg',
    title: 'Sound File',
    date: '21-02-2021',
    size: '3.5mb',
  ),
  FileInfo(
    icon: 'assets/icons/files/meta/media.svg',
    title: 'Media File',
    date: '23-02-2021',
    size: '2.5gb',
  ),
  FileInfo(
    icon: 'assets/icons/files/pdf.svg',
    title: 'Sales PDF',
    date: '25-02-2021',
    size: '3.5mb',
  ),
  FileInfo(
    icon: 'assets/icons/files/meta/excel.svg',
    title: 'Excel File',
    date: '25-02-2021',
    size: '34.5mb',
  ),
];
