import 'package:flutter/material.dart';

class Chargers extends StatefulWidget {
  const Chargers({Key? key}) : super(key: key);

  @override
  State<Chargers> createState() => _ChargersState();
}

class _ChargersState extends State<Chargers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Chargers'),
      ),
    );
  }
}
