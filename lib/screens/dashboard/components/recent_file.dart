import 'package:flutter/material.dart';
import 'package:smartx_whitedog_client/screens/dashboard/components/templates/data_table.dart';

import '../../../models/recent_file_info.dart';

class RecentFileInfoView extends DataTableView<RecentFileInfo> {
  RecentFileInfoView({
    Key? key,
  }) : super(
          key: key,
          tableKey: RecentFileInfoKey(),
          items: demoRecentFiles,
        );
}
