
import 'dart:math';

import 'package:brave_security_guard_admin_pannel/Utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class TableData extends DataTableSource{

  final List<Map<String, dynamic>> _list = List.generate(
      6,
          (index) => {
        'Mon': index,
            'Tue': 'Item $index',
            'Wed': Random().nextInt(100000),
            'Thu': Random().nextInt(100000),
            'Fri': Random().nextInt(100000),
            'Sat': Random().nextInt(100000),
            'Sun': Random().nextInt(100000),
          });

  @override
  DataRow? getRow(int index) {
    return DataRow(
        color: MaterialStatePropertyAll(AppColors.tableBody),

        cells: [
      DataCell(Text(_list[index]['Mon'].toString(),)),
      DataCell(Text(_list[index]['Tue'].toString())),
      DataCell(Text(_list[index]['Wed'].toString())),
      DataCell(Text(_list[index]['Thu'].toString())),
      DataCell(Text(_list[index]['Fri'].toString())),
      DataCell(Text(_list[index]['Sat'].toString())),
      DataCell(Text(_list[index]['Sun'].toString())),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _list.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
  
}