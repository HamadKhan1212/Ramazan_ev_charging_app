import 'package:evcharging/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

import '../screens/drawer/drawer_screen/booking.dart';
import '../screens/drawer/drawer_screen/my_car.dart';
import '../screens/drawer/drawer_screen/profile.dart';

class Browse {
  String image;
  String title;

  Browse({
    required this.image,
    required this.title,
  });
}

class DrawerSubject extends StatefulWidget {
  const DrawerSubject({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerSubject> createState() => _DrawerSubjectState();
}

class _DrawerSubjectState extends State<DrawerSubject> {
  int _current = 0;
  final List<Browse> lst = [
    Browse(image: 'images/profile.png', title: 'My Profile'),
    // Browse(image: 'images/save.png', title: 'Saved Slot'),
    Browse(image: 'images/booking.png', title: 'My Booking'),
    Browse(image: 'images/car.png', title: 'My Car'),
    // Browse(image: 'images/setting.png', title: 'Setting'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: lst.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                setState(() {
                  _current = index;
                  if (_current == 0) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  }
                  // } else if (_current == 1) {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => SavedSlot()));
                  // }
                  else if (_current == 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyBookings()));
                  } else if (_current == 2) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyCar()));
                  }
                  // } else if (_current == 4) {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => Settings()));
                  // }
                });
              },
              child: Container(
                height: 50,
                color: _current == index ? Color(0xffFFE9E9) : Colors.white,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        height: 25,
                        child: Image(
                          image: AssetImage(lst[index].image),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    ReusableText(
                      title: lst[index].title,
                      weight: FontWeight.w500,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
