import 'package:evcharging/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  const Car({Key? key}) : super(key: key);

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Image(
            image: AssetImage('images/car.jpeg'),
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableText(
                title: 'Model 3',
                size: 23,
                weight: FontWeight.bold,
              ),
              ReusableText(
                title: 'Tesla 2018',
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 1),
                              blurRadius: 6,
                              spreadRadius: 0),
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.greenAccent,
                      ),
                      height: MediaQuery.of(context).size.height * 0.22,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.lightGreen.shade50,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15))),
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade100,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15))),
                                  ))
                            ],
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ReusableText(
                                  title: 'Battry energy',
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                ReusableText(
                                  title: '72 %',
                                  size: 35,
                                  weight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ReusableText(
                                  title: 'Power saving mood',
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1, 1),
                            blurRadius: 6,
                            spreadRadius: 0),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReusableText(
                          title: 'Remaining',
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title: 'Distance and time',
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                text: '68',
                                children: [
                              TextSpan(
                                  text: 'Km',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold))
                            ])),
                        // ReusableText(
                        //   title: '68 Km',
                        //   size: 35,
                        //   weight: FontWeight.bold,
                        // ),
                        SizedBox(
                          height: 7,
                        ),
                        ReusableText(
                          title: '~ 1h 20m',
                          color: Colors.black,
                          weight: FontWeight.bold,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 30, bottom: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 1),
                          blurRadius: 6,
                          spreadRadius: 0),
                    ],
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)),
                // height: MediaQuery.of(context).size.height * 0.18,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Charging port',
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ReusableText(
                          title: 'Type 1-J1772',
                          weight: FontWeight.bold,
                          size: 22,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title: 'AC,NAmerica,19.2Kw',
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Image(
                      image: AssetImage('images/charger2-removebg-preview.png'),
                      height: 100,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 95,
              )
            ],
          ),
        )
      ],
    ));
  }
}
