import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/file_info.dart';
import 'components/header.dart';
import 'components/recent_file.dart';
import 'components/storage_info.dart';

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
                    const FileInfoView(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    RecentFileInfoView(),
                    if (Responsive.isMobile(context))
                      const SizedBox(
                        height: defaultPadding,
                      ),
                    if (Responsive.isMobile(context)) const StorageInfoView(),
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
                  child: StorageInfoView(),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
