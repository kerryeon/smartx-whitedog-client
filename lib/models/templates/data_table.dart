import 'package:flutter/material.dart';

mixin DataTableKey<Value> {
  List<DataColumn> columns();

  String get title;

  DataRow row(Value item);

  List<DataRow> rows(List<Value> items) {
    return List.generate(
      items.length,
      (index) => row(items[index]),
    );
  }
}
