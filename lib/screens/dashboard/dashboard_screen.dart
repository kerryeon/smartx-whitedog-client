import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/storage_info_row.dart';
import 'components/header.dart';
import 'components/file_info_table.dart';
import 'components/storage_info_column.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(defaultPadding),
        children: [
          const Header(),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    const StorageInfoRowView(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    FileInfoTableView(),
                    if (Responsive.isMobile(context))
                      const SizedBox(
                        height: defaultPadding,
                      ),
                    if (Responsive.isMobile(context))
                      const StorageInfoColumnView(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                const SizedBox(
                  width: defaultPadding,
                ),
              // On Mobile means if the screen is less than 850 we dont want to show it
              if (!Responsive.isMobile(context))
                const Expanded(
                  flex: 2,
                  child: StorageInfoColumnView(),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
