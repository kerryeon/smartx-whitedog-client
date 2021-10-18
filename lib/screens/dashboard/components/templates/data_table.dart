import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:smartx_whitedog_client/models/templates/data_table.dart';

import '../../../../constants.dart';

class DataTableView<Value> extends StatelessWidget {
  final DataTableKey tableKey;
  final List<Value> items;

  const DataTableView({
    Key? key,
    required this.tableKey,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tableKey.title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: tableKey.columns(),
              rows: tableKey.rows(items),
            ),
          ),
        ],
      ),
    );
  }
}
