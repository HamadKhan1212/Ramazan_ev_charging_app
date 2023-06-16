import 'package:evcharging/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 25, bottom: 25),
                        // height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.74,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.grey,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                FittedBox(
                                  child: ReusableText(
                                    title: '2715 Ash Dr.San Jose',
                                    weight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  child: CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Colors.black,
                                  ),
                                  backgroundColor: Colors.lightGreenAccent,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FittedBox(
                                  child: ReusableText(
                                    title: '3891 Ranchview Dr.Richardson',
                                    weight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          // height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Icon(
                            Icons.clear_rounded,
                            size: 25,
                          )),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      // height: MediaQuery.of(context).size.height * .1,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                title: '6Km',
                                weight: FontWeight.bold,
                                size: 16,
                              ),
                              ReusableText(
                                title: '12 min',
                                weight: FontWeight.bold,
                                size: 16,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 5,
                                width:
                                    MediaQuery.of(context).size.width * 0.147,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 1.0, left: 2),
                                child: Image(
                                  image: AssetImage('images/direction.png'),
                                  height: 20,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 5,
                                width:
                                    MediaQuery.of(context).size.width * 0.147,
                                color: Colors.green,
                              ),
                              Container(
                                height: 5,
                                width:
                                    MediaQuery.of(context).size.width * 0.147,
                                color: Colors.yellow,
                              ),
                              Container(
                                height: 5,
                                width:
                                    MediaQuery.of(context).size.width * 0.065,
                                color: Colors.red,
                              ),
                              Container(
                                height: 5,
                                width:
                                    MediaQuery.of(context).size.width * 0.065,
                                color: Colors.yellow,
                              ),
                              Container(
                                height: 5,
                                width:
                                    MediaQuery.of(context).size.width * 0.147,
                                color: Colors.green,
                              ),
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
