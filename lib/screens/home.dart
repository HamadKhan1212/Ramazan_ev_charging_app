import 'package:flutter/material.dart';

import '../utilites/reusable_text.dart';
import 'detail.dart';
import 'drawer/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  bool color = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: DrawerWidgets(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image(
                image: AssetImage('images/mapIndia.jpeg'),
                color: Colors.grey.withOpacity(0.8),
                colorBlendMode: BlendMode.modulate,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.74,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30,
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _key.currentState?.openEndDrawer();
                        },
                        child: Container(
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            // height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Image(
                              image: AssetImage(
                                'images/drawer.png',
                              ),
                              height: 20,
                            )),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      // height: MediaQuery.of(context).size.height * .37,
                      // width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                            title: 'ECar Charging Station',
                            size: 25,
                            weight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          ReusableText(
                            title: '3891 Ranchview Dr.Richardson 62639',
                            size: 16,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade800,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade800,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade800,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade800,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade800,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.04,
                              ),
                              ReusableText(
                                title: '4.5,',
                                size: 16,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              ReusableText(
                                title: '32 reviews,',
                                size: 16,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image: AssetImage('images/charger1.jpg'),
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                              ),
                              Image(
                                image: AssetImage('images/charger2.jpeg'),
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                              ),
                              Image(
                                image: AssetImage('images/charger3.png'),
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.013,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    color = !color;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.yellow.shade100,
                                      borderRadius: BorderRadius.circular(10)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  child: Icon(
                                    Icons.bookmark,
                                    color: color
                                        ? Colors.yellow.shade800
                                        : Colors.black,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => detail()));
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.065,
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ReusableText(
                                        title: 'Let\'s go',
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_rounded,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
