import 'package:flutter/material.dart';

import '../../utilites/browse_subject_drawer.dart';
import '../../utilites/reusable_text.dart';

class DrawerWidgets extends StatefulWidget {
  const DrawerWidgets({Key? key}) : super(key: key);

  @override
  State<DrawerWidgets> createState() => _DrawerWidgetsState();
}

class _DrawerWidgetsState extends State<DrawerWidgets> {
  bool sync = false;
  String x = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            height: MediaQuery.of(context).size.height * 0.83,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 30),
                    color: Colors.grey.shade300,
                    height: 230,
                    width: double.infinity,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/profile.jpg'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableText(
                          title: 'Maria Sent',
                          weight: FontWeight.bold,
                          size: 18,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title: 'mirasent123@gmail.com',
                        )
                      ],
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: DrawerSubject()),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
