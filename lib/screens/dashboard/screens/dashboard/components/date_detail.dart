import 'package:flutter/material.dart';

class DateDetail extends StatefulWidget {
  const DateDetail({Key? key}) : super(key: key);

  @override
  State<DateDetail> createState() => _DateDetailState();
}

class _DateDetailState extends State<DateDetail> {
  bool day = true;
  bool week = false;
  bool month = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        day = true;
                        week = false;
                        month = false;
                      });
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                        decoration: BoxDecoration(
                            color: day ? Colors.blue : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          'Day',
                          style: TextStyle(
                            color: day ? Colors.white : Colors.black,
                          ),
                        ))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        day = false;
                        week = true;
                        month = false;
                      });
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                        decoration: BoxDecoration(
                            color: week ? Colors.blue : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          'Week',
                          style: TextStyle(
                            color: week ? Colors.white : Colors.black,
                          ),
                        ))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        day = false;
                        week = false;
                        month = true;
                      });
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                        decoration: BoxDecoration(
                            color: month ? Colors.blue : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          'Month',
                          style: TextStyle(
                            color: month ? Colors.white : Colors.black,
                          ),
                        ))),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text('12/Feb/2022'),
            SizedBox(
              width: 5,
            ),
            Text('To'),
            SizedBox(
              width: 5,
            ),
            Text('19/Feb/2022'),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
              size: 15,
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.orange, borderRadius: BorderRadius.circular(5)),
              child: Icon(Icons.refresh),
            )
          ],
        ),
      ),
    );
  }
}
