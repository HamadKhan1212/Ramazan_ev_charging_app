import 'package:evcharging/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

class SavedSlot extends StatefulWidget {
  const SavedSlot({Key? key}) : super(key: key);

  @override
  State<SavedSlot> createState() => _SavedSlotState();
}

class _SavedSlotState extends State<SavedSlot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            Center(
              child: ReusableText(
                title: 'Saved Slot',
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
