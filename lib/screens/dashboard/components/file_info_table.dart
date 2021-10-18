import 'package:flutter/material.dart';
import 'package:smartx_whitedog_client/screens/dashboard/components/templates/data_table.dart';

import '../../../models/file_info.dart';

class FileInfoTableView extends DataTableView<FileInfo> {
  FileInfoTableView({
    Key? key,
  }) : super(
          key: key,
          tableKey: FileInfoKey(),
          items: demoRecentFiles,
        );
}
