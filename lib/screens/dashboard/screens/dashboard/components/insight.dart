import 'package:flutter/material.dart';

import '../../constants.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Insight",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Get live status of your location",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                "sesson initated on CH#! by YKS31",
              ),
              Text(
                "sesson initated on CH#! by YKS31",
              ),
              Text(
                "sesson initated on CH#! by YKS31",
              ),
              Text(
                "sesson initated on CH#! by YKS31",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
