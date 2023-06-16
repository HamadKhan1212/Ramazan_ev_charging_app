import 'package:evcharging/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            Center(
              child: ReusableText(
                title: 'Settings',
                size: 30,
                weight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
