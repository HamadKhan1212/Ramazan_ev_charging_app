import 'package:evcharging/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

class MyCar extends StatefulWidget {
  const MyCar({Key? key}) : super(key: key);

  @override
  State<MyCar> createState() => _MyCarState();
}

class _MyCarState extends State<MyCar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151D1D),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-1, -1),
                    blurRadius: 20,
                    spreadRadius: 30)
              ]),
              child: Image(
                image: AssetImage('images/car_images7.png'),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 230,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('images/darkmap.jpg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                            title: 'Montogomery 821 \nStation',
                            color: Colors.white,
                            size: 20,
                            weight: FontWeight.bold,
                          ),
                          ReusableText(
                            title: 'Actora Awo Block 182B Unknown\nAlaboma ',
                            color: Colors.grey,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade600,
                                  ),
                                  child: Icon(
                                    Icons.call,
                                    color: Color(0xff6EDCB5),
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade600,
                                  ),
                                  child: Icon(
                                    Icons.arrow_circle_right,
                                    color: Color(0xff6EDCB5),
                                    size: 20,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ReusableText(
                          title:
                              'This station is sutable with all of your vahicle',
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReusableText(
                      title: 'PRICING',
                      weight: FontWeight.bold,
                      size: 16,
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xff1D2729),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ReusableText(
                            title: 'Normal Price',
                            color: Colors.white,
                            size: 17,
                          ),
                          Column(
                            children: [
                              ReusableText(
                                title: 'For 4 hour',
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReusableText(
                                title: '\$5.00 ',
                                color: Colors.white,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ReusableText(
                                title: 'After 4 hour',
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReusableText(
                                title: '\$5.00 ',
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xff1D2729),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ReusableText(
                                    title: 'Peak Hour',
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.access_time_outlined,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {},
                                child: ReusableText(
                                  title: 'See details',
                                  color: Color(0xff6DDDB5),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ReusableText(
                                title: 'For 4 hour',
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReusableText(
                                title: '\$5.00 ',
                                color: Colors.white,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ReusableText(
                                title: 'After 4 hour',
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReusableText(
                                title: '\$5.00 ',
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ReusableText(
                      title: 'CHARGER TYPES',
                      weight: FontWeight.bold,
                      size: 16,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xff1D2729),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ReusableText(
                            title: 'Ac Charger',
                            color: Colors.white,
                            size: 17,
                          ),
                          Column(
                            children: [
                              ReusableText(
                                title: 'Total Slot',
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReusableText(
                                title: '10 Slot ',
                                color: Colors.white,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ReusableText(
                                title: 'Max Capacity',
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReusableText(
                                title: '26 KW',
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
