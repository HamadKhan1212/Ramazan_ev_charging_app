import 'package:evcharging/screens/home.dart';
import 'package:flutter/material.dart';

import '../screens/car.dart';
import '../screens/history.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _pages = [Home(), History(), Car()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          // alignment: Alignment.bottomCenter,
          children: [
            _pages[_currentIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.1,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _currentIndex = 0;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/menu.png'),
                                color: _currentIndex == 0
                                    ? Colors.white
                                    : Colors.grey.shade700,
                                height: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: CircleAvatar(
                                  radius: 3,
                                  backgroundColor: _currentIndex == 0
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/time.png'),
                                color: _currentIndex == 1
                                    ? Colors.white
                                    : Colors.grey.shade700,
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: CircleAvatar(
                                  radius: 3,
                                  backgroundColor: _currentIndex == 1
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _currentIndex = 2;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/car.png'),
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.grey.shade700,
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: CircleAvatar(
                                  radius: 3,
                                  backgroundColor: _currentIndex == 2
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
