import 'package:flutter/material.dart';

import '../../../table/table.dart';

class TableContainer extends StatefulWidget {
  const TableContainer({Key? key}) : super(key: key);

  @override
  State<TableContainer> createState() => _TableContainerState();
}

class _TableContainerState extends State<TableContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(
                'Top Location',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            FittedBox(
              child: Text(
                'Here are top location by revenue',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Table(children: [
              reusableTableRow(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  backgroundColor: Colors.lightBlueAccent,
                  textColor: Colors.black,
                  lst: [
                    '#',
                    'Location',
                    'Revenue',
                  ]),
              reusableTableRow(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffEEF8FA),
                  textColor: Colors.black,
                  lst: [
                    '1',
                    'City Center',
                    '\$2000.00',
                  ]),
              reusableTableRow(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffEEF8FA),
                  textColor: Colors.black,
                  lst: [
                    '2',
                    'City Center',
                    '\$2000.00',
                  ]),
              reusableTableRow(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffEEF8FA),
                  textColor: Colors.black,
                  lst: [
                    '3',
                    'City Center',
                    '\$2000.00',
                  ]),
              reusableTableRow(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffEEF8FA),
                  textColor: Colors.black,
                  lst: [
                    '4',
                    'City Center',
                    '\$2000.00',
                  ]),
              reusableTableRow(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffEEF8FA),
                  textColor: Colors.black,
                  lst: [
                    '5',
                    'City Center',
                    '\$2000.00',
                  ]),
            ])
          ],
        ),
      ),
    );
  }
}
