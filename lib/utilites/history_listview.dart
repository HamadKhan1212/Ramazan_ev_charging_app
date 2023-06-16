import 'package:evcharging/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

class Browse {
  String image;
  String title;

  Browse({
    required this.image,
    required this.title,
  });
}

class HistorySubject extends StatefulWidget {
  const HistorySubject({
    Key? key,
  }) : super(key: key);

  @override
  State<HistorySubject> createState() => _HistorySubjectState();
}

class _HistorySubjectState extends State<HistorySubject> {
  int _current = 0;
  final List<Browse> historyLst = [
    Browse(image: 'images/car_images1.png', title: 'Toyota'),
    Browse(image: 'images/car_images2.png', title: 'Tesla'),
    Browse(image: 'images/car_images5.png', title: 'Ford'),
    Browse(image: 'images/car_images2.png', title: 'BMW'),
    Browse(image: 'images/car_images5.png', title: 'Audi'),
    Browse(image: 'images/car_images6.png', title: 'Jeep'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: historyLst.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              setState(() {
                _current = index;
                if (_current == 0) {
                } else if (_current == 1) {
                } else if (_current == 2) {
                } else if (_current == 3) {
                } else if (_current == 4) {}
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
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
                          title: historyLst[index].title,
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
                      image: AssetImage(historyLst[index].image),
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
