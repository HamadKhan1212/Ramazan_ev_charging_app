import 'package:evcharging/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

import '../utilites/history_listview.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 100),
        child: Column(
          children: [
            ReusableText(
              title: 'History',
              weight: FontWeight.bold,
              size: 40,
            ),
            Expanded(child: Container(child: HistorySubject())),
          ],
        ),
      ),
    );
  }
}
