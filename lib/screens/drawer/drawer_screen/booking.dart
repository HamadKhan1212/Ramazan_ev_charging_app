import 'package:evcharging/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({Key? key}) : super(key: key);

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage('images/back.jpg'),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableText(
                        title: 'Montgomory 821 Station',
                        size: 18,
                        color: Colors.white,
                        weight: FontWeight.bold,
                      ),
                      Icon(
                        Icons.heart_broken_outlined,
                        color: Colors.grey.shade300,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ReusableText(
                    title: 'Auntion Bule area block station',
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Column(
                    children: [
                      ReusableText(
                        title: 'Brians Car',
                        weight: FontWeight.bold,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/charging.png'),
                            height: 30,
                            color: Color(0xff6DDDB5),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ReusableText(
                            title: 'CHARGING',
                            color: Color(0xff6DDDB5),
                            size: 16,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  decoration: BoxDecoration(
                      color: Color(0xff1E2228),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        title: 'Charging Detail',
                        color: Colors.white,
                        weight: FontWeight.bold,
                        size: 18,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: 'Charging Code',
                            color: Colors.grey,
                            size: 17,
                          ),
                          ReusableText(
                            title: 'TRX182',
                            color: Colors.white,
                            weight: FontWeight.bold,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: 'Limit to',
                            color: Colors.grey,
                            size: 17,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: '30',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                  children: [
                                TextSpan(
                                    text: ' kWh / ',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal)),
                                TextSpan(
                                  text: ' 15',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                TextSpan(
                                    text: ' hours',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal)),
                              ]))
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: 'Finish time est',
                            size: 17,
                            color: Colors.grey,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: '09:20',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                  children: [
                                TextSpan(
                                    text: ' AM',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal)),
                              ]))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
