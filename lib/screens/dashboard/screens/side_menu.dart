import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dashboard/screen/charger.dart';
import 'dashboard/screen/location.dart';
import 'dashboard/screen/report.dart';
import 'dashboard/screen/transaction.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(
              "images/dashboard/logo.png",
              color: Colors.white,
            ),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "images/dashboard/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Locations",
            svgSrc: "images/dashboard/location.svg",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Location()));
            },
          ),
          DrawerListTile(
            title: "Chargers",
            svgSrc: "images/dashboard/charging.svg",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Chargers()));
            },
          ),
          DrawerListTile(
            title: "Reports",
            svgSrc: "images/dashboard/reports.svg",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Report()));
            },
          ),
          DrawerListTile(
            title: "Transactions",
            svgSrc: "images/dashboard/transaction.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Transaction()));
            },
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(
                          Icons.help,
                          size: 18,
                          color: Colors.white54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Help & Supports',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 18,
                        color: Colors.white54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sign Out',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.red,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'City Center',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              'IGVP, Pandri Paipur',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
