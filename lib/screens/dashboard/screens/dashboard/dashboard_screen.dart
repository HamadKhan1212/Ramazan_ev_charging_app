import 'package:flutter/material.dart';

import 'components/chart.dart';
import 'components/date_detail.dart';
import 'components/header.dart';
import 'components/insight.dart';
import 'components/my_fields.dart';
import 'components/statistics.dart';
import 'components/table_container.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      primary: false,
      padding: EdgeInsets.all(16),
      child: Column(children: [
        Header(),
        SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(flex: 4, child: MyFiles()),
                        Expanded(flex: 2, child: StarageDetails())
                      ],
                    ),
                    SizedBox(height: 16),
                    Align(
                        alignment: Alignment.centerRight, child: DateDetail()),
                    Statistic(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(flex: 3, child: TableContainer()),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
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
                                      'Network Engagment',
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
                                  Container(
                                    height: 175,
                                    child: Cart(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ]),
    ));
  }
}
